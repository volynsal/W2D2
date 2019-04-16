module Stepable
    
    
    def moves
        diffs = self.move_diffs
        movements - []
        position = self.pos

        diffs.each do |diff|
            movements << [position[0] + diff[0], position[1] + diff[1]
        end

        movements
    end

    def move_diffs
        raise NotImplementedError 
    end

end
