module Slideable
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]
    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves

    end

    private
    def move_dirs
        raise NotImplementedError
        
        #if self.class.is_a?(Bishop) || self.class.is_a?(Queen) || self.class.is_a?(Bishop) 

        #else

        end
    end

    def grow_unblocked_moves_in_dir (dx, dy)
        upcoming_moves = []
        
    
        # until counter == 7 reach piece or end board
            upcoming_moves << [pos[0] + dx]
        end

        until counter == 0
            
        until counter == 7

        until counter == 0
    end
end