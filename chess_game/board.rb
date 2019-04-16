require_relative 'Pieces/piece.rb'
# require_relative 'Pieces/req_files'
require 'byebug'
class Board

    attr_reader :rows

    def initialize
        @rows = Array.new(8) { Array.new(8) } 
        #@sentinel = NullPiece.new
        setup
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        # debugger
        # start = @rows[start_pos]
        # final =  @rows[end_pos]
        raise "no piece at start position" unless self[start_pos].is_a?(Piece)
        raise "piece cannot move to this end position" unless self[end_pos] == nil
        #debugger
        self[end_pos] = self[start_pos]
        self[start_pos] = nil
    end

    def valid_pos?(pos)
        valid_range = (0..7).to_a

        valid_range.include?(pos[0]) && valid_range.include?(pos[1])
    end

    private

    def setup 
        (0...@rows.length).each do |idx1|
            (0...@rows.length).each do |idx2|
                if (idx1 == 0 && idx2 == 0) || (idx1 == 0 && idx2 == 7)
                    @rows[idx1][idx2] =  Rook.new(:white, self, [idx1, idx2])  
                elsif (idx1 == 0 && idx2 == 1) || (idx1 == 0 && idx2 == 6)
                    @rows[idx1][idx2] = Bishop.new(:white, self, [idx1, idx2])  
                elsif (idx1 == 0 && idx2 == 2) || (idx1 == 0 && idx2 == 5)
                    @rows[idx1][idx2] =  Knight.new(:white, self, [idx1, idx2])
                elsif (idx1 == 0 && idx2 == 3) 
                    @rows[idx1][idx2] =  Queen.new(:white, self, [idx1, idx2]) 
                elsif (idx1 == 0 && idx2 == 4) 
                    @rows[idx1][idx2] =  King.new(:white, self, [idx1, idx2]) 
                elsif (idx1 == 7 && idx2 == 0) || (idx1 == 7 && idx2 == 7)
                    @rows[idx1][idx2] =  Rook.new(:black, self, [idx1, idx2])  
                elsif (idx1 == 7 && idx2 == 1) || (idx1 == 7 && idx2 == 6)
                    @rows[idx1][idx2] = Bishop.new(:black, self, [idx1, idx2])  
                elsif (idx1 == 7 && idx2 == 2) || (idx1 == 7 && idx2 == 5)
                    @rows[idx1][idx2] =  Knight.new(:black, self, [idx1, idx2])
                elsif (idx1 == 7 && idx2 == 3)
                    @rows[idx1][idx2] =  Queen.new(:black, self, [idx1, idx2]) 
                elsif (idx1 == 7 && idx2 == 4)
                    @rows[idx1][idx2] =  King.new(:black, self, [idx1, idx2]) 
                elsif idx1 == 1
                    @rows[idx1][idx2] = Pawn.new(:white, self, [idx1, idx2])
                elsif idx1 == 6
                    @rows[idx1][idx2] = Pawn.new(:black, self, [idx1, idx2])
                end
            end
        end
    end
end

