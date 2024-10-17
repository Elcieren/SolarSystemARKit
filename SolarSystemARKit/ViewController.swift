//
//  ViewController.swift
//  SolarSystemARKit
//
//  Created by Eren Elçi on 17.10.2024.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
       
        //  let myBox = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
        let mySphereMars = creatSphere(radius: 0.1, content: "mars", vector: SCNVector3(x: 0.5, y: 0.2, z: -1))
        sceneView.scene.rootNode.addChildNode(mySphereMars)
        let mySphereVenus = creatSphere(radius: 0.2, content: "venus", vector: SCNVector3(x: 0.0, y: 0.2, z: -1))
        sceneView.scene.rootNode.addChildNode(mySphereVenus)
        let mySphereWorld = creatSphere(radius: 0.2, content: "world", vector: SCNVector3(x: 1, y: 0.2, z: -1))
        sceneView.scene.rootNode.addChildNode(mySphereWorld)
        sceneView.automaticallyUpdatesLighting = true
        
        
    }
    
    func creatSphere(radius: CGFloat , content: String , vector: SCNVector3 ) -> SCNNode {
        // kure yarattik
        let mySphere = SCNSphere(radius: radius)
        // neyle saralyacagimizi soyleyip onu olusturdugumuz kureye verdik
        let boxMeterial = SCNMaterial()
        boxMeterial.diffuse.contents = UIImage(named: content)
        mySphere.materials = [boxMeterial]
        //Node olusturduk
        let node = SCNNode()
        node.position = vector
        node.geometry = mySphere
        
        return node
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
