//
//  JuegoViewController.swift
//  Patronum - CVS
//
//  Created by user234560 on 28/10/24.
//

import UIKit

class JuegoViewController: UIViewController {
    
    
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var puntuacionLabel: UILabel!
    @IBOutlet weak var botonComenzar: UIButton!
    
    var imagenes: [UIImage] = []
    var secuencia: [UIImage] = []
    var secuenciaUsuario: [UIImage] = []
    var puntuacion: Int = 0
    var juegoTerminado: Bool = false


    override func viewDidLoad() {
            super.viewDidLoad()
            
            // Cargar las imágenes
            if let imagen1 = UIImage(named: "imagen1"),
               let imagen2 = UIImage(named: "imagen2"),
               let imagen3 = UIImage(named: "imagen3") {
                imagenes = [imagen1, imagen2, imagen3]
            } else {
                print("Error: Algunas imágenes no se han cargado correctamente.")
            }
            
            puntuacionLabel.text = "Puntuación: \(puntuacion)"
            desactivarBotones()
        }
    
    @IBAction func botoncomenzar(_ sender: Any){
        botonComenzar.isHidden = true // Ocultar el botón
        iniciarJuego()
    }
    
    func iniciarJuego() {
        secuenciaUsuario.removeAll()
        // Generar una nueva secuencia aleatoria
        secuencia = (0..<3).map { _ in imagenes.randomElement()! }
        mostrarBotonesAleatorios()
        
        // Desactivar botones para el usuario
        desactivarBotones()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.mostrarBotonesOriginales()
            self.permitirSeleccionUsuario()
        }
    }
    
    func mostrarBotonesAleatorios() {
        boton1.setImage(secuencia[0], for: .normal)
        boton2.setImage(secuencia[1], for: .normal)
        boton3.setImage(secuencia[2], for: .normal)
    }
    
    func mostrarBotonesOriginales() {
        boton1.setImage(imagenes[0], for: .normal)
        boton2.setImage(imagenes[1], for: .normal)
        boton3.setImage(imagenes[2], for: .normal)
    }
    
    func permitirSeleccionUsuario() {
        if !juegoTerminado {
            boton1.isUserInteractionEnabled = true
            boton2.isUserInteractionEnabled = true
            boton3.isUserInteractionEnabled = true
        }
    }
    @IBAction func usuarioSeleccionoBoton1(_ sender: Any){
        if !juegoTerminado {
                   secuenciaUsuario.append(boton1.image(for: .normal)!)
                   verificarSecuencia()
               }
           }
    
    @IBAction func usuarioSeleccionoBoton2(_ sender: Any){
        if !juegoTerminado {
                   secuenciaUsuario.append(boton2.image(for: .normal)!)
                   verificarSecuencia()
               }
           }
    
    @IBAction func usuarioSeleccionoBoton3(_ sender: Any){
        if !juegoTerminado {
                   secuenciaUsuario.append(boton3.image(for: .normal)!)
                   verificarSecuencia()
               }
           }
    
    func verificarSecuencia() {
        // Comparar la secuencia del usuario con la correcta
        if secuenciaUsuario.count == secuencia.count {
            let acierto = secuenciaUsuario.elementsEqual(secuencia) { $0.isEqual($1) }
            
            if acierto {
                puntuacion += 1 // Solo sumar si el usuario acertó
                actualizarPuntuacionLabel()
                secuenciaUsuario.removeAll()
                iniciarJuego() // Reiniciar el juego
            } else {
                print("Game Over. Puntuación final: \(puntuacion)")
                desactivarBotones()
                juegoTerminado = true // Finalizar el estado del juego
                mostrarFinalViewController() // Ir a la pantalla final
            }
        }
    }
    
    func mostrarFinalViewController() {
        performSegue(withIdentifier: "FinalViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FinalViewController" {
            if let finalVC = segue.destination as? FinalViewController {
                finalVC.puntuacionFinal = puntuacion
            }
        }
    }
    
    func desactivarBotones() {
        boton1.isUserInteractionEnabled = false
        boton2.isUserInteractionEnabled = false
        boton3.isUserInteractionEnabled = false
    }
    
    func actualizarPuntuacionLabel() {
        puntuacionLabel.text = "Puntuación: \(puntuacion)"
    }
}
