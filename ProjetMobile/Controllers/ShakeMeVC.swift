//
//  ShakeMeVC.swift
//  ProjetMobile
//
//  Created by Dylan Cherrier on 09/11/2021.
//

import UIKit
import CoreMotion

class ShakeMeVC: UIViewController {
    @IBOutlet var label: [UILabel]!
    let manager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label[2].textAlignment = .center

        print(manager.isAccelerometerActive, manager.isAccelerometerAvailable)
        
    }
    
    @IBAction func start(_ sender: Any) {
        if manager.isAccelerometerAvailable {
            manager.accelerometerUpdateInterval = 0.5
            manager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
                if let d = data{
                    //print(d.acceleration.x)
                    self.label[0].text = "x = \((d.acceleration.x * -9.81))"
                    self.label[1].text = "y = \((d.acceleration.y * -9.81))"
                    self.label[2].text = "z = \((d.acceleration.z * -9.81))"
                }
            }
            
        }
        
        if manager.isDeviceMotionAvailable{
            manager.deviceMotionUpdateInterval = TimeInterval(0.5)
            manager.startDeviceMotionUpdates(to: OperationQueue.current!) { (donne, stop) in
                
                if let acceleration = donne?.userAcceleration{
                    print("x = \(acceleration.x * -9.81), y = \(acceleration.x * -9.81), z = \(acceleration.x * -9.81)")
                }
                    
                
                
            }
            
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        if(manager.isAccelerometerActive){
            manager.stopAccelerometerUpdates()
            self.label[0].text = "Value x"
            self.label[1].text = "Value y"
            self.label[2].text = "Value z"
        }
        
        if manager.isDeviceMotionActive{
            manager.stopDeviceMotionUpdates()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
