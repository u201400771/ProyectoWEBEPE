module TicketsHelper
    
    def estado(id)
        case id
        when 1
            "Abierto"
        when 2
            "En proceso"
        when 3
            "Atendido"
        else
            "Error"
        end
    end
    
    def prioridad(id)
        case id
        when 1
            "Baja"
        when 2
            "Normal"
        when 3
            "Alta"
        else
            ""
        end
    end
end
