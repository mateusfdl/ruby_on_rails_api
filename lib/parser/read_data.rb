module Parser
    class ReadData 
        def initialize(file_path)
            @file_path = file_path
        end

        def read 
            File.open(@file_path).readlines[1..]
        end
    end
end