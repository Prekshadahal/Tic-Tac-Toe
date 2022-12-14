//
//  ViewController.swift
//  ticTacToe
//
//  Created by Preksha Dahal on 10/08/2022.
//

import UIKit

class ViewController: UIViewController {
    //Enum is some how similar to bool values as it either returns one value or the other which is similar to the true or false statement in bool.
    //Enums can contain more than two or more values.
    enum Turn
    {
        case Nought
        case Cross
    }

    @IBOutlet weak var labelTurn: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    var NOUGHT = "O"
    var CROSS = "X"
    var board = [UIButton]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        initBoard()
    }
    
    func initBoard()
    {
        board.append(a1)
        board.append(a2)
        board.append(a3)
        board.append(b1)
        board.append(b2)
        board.append(b3)
        board.append(c1)
        board.append(c2)
        board.append(c3)
        
    }
    

    @IBAction func boardTapAction(_ sender: UIButton)
    {
        addToBoard(sender)
    }
    
    func addToBoard(_ sender: UIButton)
    {
        if(sender.title(for: .normal) == nil)
        {
            if(currentTurn == Turn.Nought)
            {
                sender.setTitle(NOUGHT, for: .normal)
                currentTurn = Turn.Cross
                labelTurn.text = CROSS
            }
        }
        
        else if(currentTurn == Turn.Cross)
            {
            sender.setTitle(CROSS, for: .normal)
            currentTurn = Turn.Nought
            labelTurn.text = NOUGHT
            }
        sender.isEnabled = false
        }
    }

