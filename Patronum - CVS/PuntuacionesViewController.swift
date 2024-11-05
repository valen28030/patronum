//
//  PuntuacionesViewController.swift
//  Patronum - CVS
//
//  Created by user234560 on 28/10/24.
//

import UIKit

class PuntuacionesViewController: UIViewController {
    
    
    var puntuaciones: [Puntuacion] = []
    
    struct Puntuacion: Codable {
        let puntuacion: Int
        let fecha: String
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Listado de Puntuaciones"
        tableView.dataSource = self
        tableView.delegate = self
        
        cargarPuntuaciones() // Cargar las puntuaciones al inicio
    }
    
    func cargarPuntuaciones() {
        print("Cargando puntuaciones de UserDefaults")
        if let datos = UserDefaults.standard.data(forKey: "puntuaciones") {
            let decoder = JSONDecoder()
            do {
                puntuaciones = try decoder.decode([Puntuacion].self, from: datos)
                print("Puntuaciones cargadas: \(puntuaciones.count)")
            } catch {
                print("Error al decodificar puntuaciones: \(error)")
            }
        } else {
            print("No hay datos en UserDefaults para cargar")
        }

        
        tableView.reloadData()
    }
}

// MARK: - TableView DataSource
extension PuntuacionesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puntuaciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PuntuacionCell", for: indexPath)
        let puntuacion = puntuaciones[indexPath.row]
        
        cell.textLabel?.text = "Puntuación: \(puntuacion.puntuacion) - Fecha: \(puntuacion.fecha)"
        
        // Cambiar el color del texto a blanco
        cell.textLabel?.textColor = .white
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44 // Ajusta esta altura según tus necesidades
    }
}

// MARK: - TableView Delegate
extension PuntuacionesViewController: UITableViewDelegate {
    // Puedes implementar métodos de delegado aquí si es necesario
}
