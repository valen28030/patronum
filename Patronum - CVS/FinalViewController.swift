//
//  FinalViewController.swift
//  Patronum - CVS
//
//  Created by user234560 on 28/10/24.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var puntuaciontotal: UILabel!
    
    var puntuacionFinal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Mostrar la puntuación total
        puntuaciontotal.text = "Puntuación total: \(puntuacionFinal)"
    }
    
    @IBAction func botonpuntuaciones(_ sender: Any){
        // Guarda la puntuación antes de ir a la siguiente pantalla
        agregarPuntuacion(puntuacionFinal)
        performSegue(withIdentifier: "PuntuacionesViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PuntuacionesViewController" {
            if let puntuacionesVC = segue.destination as? PuntuacionesViewController {
                // Puedes pasar más información si es necesario
            } else {
                print("Error: No se pudo inicializar PuntuacionesViewController")
            }
        }
    }
    
    @IBAction func botonreiniciar(_ sender: Any){
        if let juegoVC = storyboard?.instantiateViewController(withIdentifier: "JuegoViewController") as? JuegoViewController {
            navigationController?.pushViewController(juegoVC, animated: true)
        }
    }
    
    @IBAction func botonsalir(_ sender: Any){
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func agregarPuntuacion(_ puntuacion: Int) {
            let fecha = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .none)
            let nuevaPuntuacion = PuntuacionesViewController.Puntuacion(puntuacion: puntuacion, fecha: fecha)
            
            var puntuaciones: [PuntuacionesViewController.Puntuacion] = []
            
            // Cargar puntuaciones existentes
            if let datos = UserDefaults.standard.data(forKey: "puntuaciones") {
                let decoder = JSONDecoder()
                do {
                    puntuaciones = try decoder.decode([PuntuacionesViewController.Puntuacion].self, from: datos)
                } catch {
                    print("Error al cargar puntuaciones: \(error)")
                }
            }
            
            // Agregar la nueva puntuación
            puntuaciones.append(nuevaPuntuacion)
            
            // Ordenar de mayor a menor y limitar a las 10 mejores
            puntuaciones.sort { $0.puntuacion > $1.puntuacion }
            if puntuaciones.count > 10 {
                puntuaciones = Array(puntuaciones.prefix(10)) // Mantener solo las 10 mejores
            }
            
            // Guardar las puntuaciones actualizadas
            let encoder = JSONEncoder()
            do {
                let datos = try encoder.encode(puntuaciones)
                UserDefaults.standard.set(datos, forKey: "puntuaciones")
            } catch {
                print("Error al guardar puntuaciones: \(error)")
            }
        }
    }
