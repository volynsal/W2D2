
class Piece

    attr_reader :pos, :board
    
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        puts self.symbol 
    end

    def valid_moves ()

    end

    def pos=(val)
        self.pos = val
    end

    def symbol

    end
    
    private
    def move_into_check?(end_pos)

    end

end

class Rook < Piece
    # include Slideable
    

    def symbol
        "R"
    end

    def move_dirs
        HORIZONTAL_DIRS
    end

end

class Bishop < Piece
    include Slideable
    def symbol
        "B"
    end

    def move_dirs
        DIAGONAL_DIRS  
    end

end

class Queen < Piece
    # include Slideable

    def symbol
        "Q"
    end

    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS  
    end

end

class Knight < Piece
    def symbol
        "K"
    end
end

class King < Piece
   
    def symbol
        "+"
    end
end

class Pawn < Piece

    def symbol
        "P"
    end
end 