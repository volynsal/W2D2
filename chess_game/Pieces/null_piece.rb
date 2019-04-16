class NullPiece < Piece
    include Singleton

    attr_reader :color

    def initialize
        super(color = :nil)
    end

    def moves 
        
    end

    def symbol
        " "
    end

end