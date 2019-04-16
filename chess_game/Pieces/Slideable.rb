module Slideable
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]]
    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves (dx, dy)
        self.grow_unblocked_moves_in_dir (dx, dy)
    end

    private
    def move_dirs
        raise NotImplementedError 
        
        #if self.class.is_a?(Bishop) || self.class.is_a?(Queen) || self.class.is_a?(Bishop) 

        #else

        end
    end

    def grow_unblocked_moves_in_dir (dx, dy)
        possible_moves = self.move_dirs
        current_pos = self.pos 
        grow_moves = []

        if possible_moves.include?([dx, dy])
            if dx == 0
                until current_pos[1] + dy == 7 || current_pos[1] + dy == 0
                    new_pos = [current_pos[0], current_pos[1]+(dy)]
                    grow_moves << new_pos if board.valid_pos?(new_pos)
                end
            elsif dy == 0
                until current_pos[0] + dx == 7 || current_pos[0] + dx == 0
                    new_pos = [current_pos[0]+(dx), current_pos[1]]
                    grow_moves << new_pos if board.valid_pos?(new_pos)
                end
            else
                until (current_pos[0] + dx == 7 || current_pos[1] + dy == 7)|| (current_pos[0] + dx == 0 && current_pos[1] + dy == 0)
                    new_pos = [current_pos[0]+(dx), current_pos[1]+(dy)]
                    grow_moves << new_pos if board.valid_pos?(new_pos)
                end
            end
        end
    end
end

