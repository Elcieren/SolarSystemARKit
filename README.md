## Solar System ARKit
<img src="https://github.com/user-attachments/assets/a018f151-41ae-4df4-a32a-8619c5bd5fac" alt="Ekran-Kaydı-2024-10-18" style="width:240px; height:426px;" />
<details>
    <summary><h2>Uygulama Amacı</h2></summary>
  Uygulama, artırılmış gerçeklik ile Güneş Sistemi'ndeki gezegenleri kullanıcılara sunuyor,iOS platformunda ARKit ve SceneKit kullanarak artırılmış gerçeklik (AR) deneyimi oluşturan bir uygulamanın parçasıdır. ARSCNView, AR (Artırılmış Gerçeklik) içeriklerini görüntülemek için kullanılan bir SceneKit tabanlı bir görünümdür. Kodda, bazı gezegenlerin (Mars, Venüs ve Dünya) 3D küreler şeklinde ekrana yerleştirildiğini ve kullanıcının cihazını hareket ettirerek bu kürelere AR ortamında bakabileceğini görebiliyoruz.
  </details> 


  <details>
    <summary><h2>creatSphere Fonksiyonu</h2></summary>
    creatSphere: Belirtilen radius ile bir küre yaratır ve content (örneğin Mars) resmini kaplama olarak kullanır.
     SCNSphere: 3D küre oluşturur.
     SCNMaterial: Kaplama materyali oluşturur. Resimler (UIImage) bu materyale atanır.
    SCNNode: Kürenin sahnedeki pozisyonunu belirleyen ve yöneten bir düğümdür.

    
    ```
    func creatSphere(radius: CGFloat , content: String , vector: SCNVector3 ) -> SCNNode {
    let mySphere = SCNSphere(radius: radius)
    let boxMeterial = SCNMaterial()
    boxMeterial.diffuse.contents = UIImage(named: content)
    mySphere.materials = [boxMeterial]
    let node = SCNNode()
    node.position = vector
    node.geometry = mySphere
    
    return node
    }




    ```
  </details> 



<details>
    <summary><h2>Uygulama Görselleri </h2></summary>
    
    
 <table style="width: 100%;">
    <tr>
        <td style="text-align: center; width: 16.67%;">
            <h4 style="font-size: 14px;">ARKit Performance in Low-Light Environments</h4>
            <img src="https://github.com/user-attachments/assets/a0eb3391-a342-421c-bcc5-c19c087e9475" style="width: 100%; height: auto;">
        </td>
      <td style="text-align: center; width: 16.67%;">
            <h4 style="font-size: 14px;">ARKit Performance in Well-Lit Environments</h4>
            <img src="https://github.com/user-attachments/assets/b9681d71-f270-458a-b75d-b15a1eec968c" style="width: 100%; height: auto;">
        </td>
      <td style="text-align: center; width: 16.67%;">
            <h4 style="font-size: 14px;">ARKit Performance in Well-Lit Environments</h4>
            <img src="https://github.com/user-attachments/assets/7739d4de-2976-41bd-b92f-48ade9ea3b69" style="width: 100%; height: auto;">
        </td>
    </tr>
</table>
  </details> 
