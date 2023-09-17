import Foundation
import CoreLocation
import Flutter

public class LocationHandler: NSObject, FlutterPlugin {
    private var locationManager: CLLocationManager?

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "location_channel", binaryMessenger: registrar.messenger())
        let instance = LocationHandler()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "getLocation" {
            getLocation(result: result)
        } else {
            result(FlutterMethodNotImplemented)
        }
    }

    private func getLocation(result: @escaping FlutterResult) {
        locationManager = CLLocationManager()
        locationManager?.desiredAccuracy = kCLLocationAccuracyNearestTenMeters

        if CLLocationManager.locationServicesEnabled() {
            locationManager?.requestWhenInUseAuthorization()
            locationManager?.delegate = self
            locationManager?.startUpdatingLocation()
        } else {
            result(FlutterError(code: "LOCATION_DISABLED", message: "Location services are disabled", details: nil))
        }
    }
}

extension LocationHandler: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            let locationMap: [String: Any] = [
                "latitude": location.coordinate.latitude,
                "longitude": location.coordinate.longitude
            ]
            manager.stopUpdatingLocation()
            result(locationMap)
        }
    }

    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        result(FlutterError(code: "LOCATION_ERROR", message: error.localizedDescription, details: nil))
    }
}
