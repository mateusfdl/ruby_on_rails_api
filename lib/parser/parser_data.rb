module Parser
    class ParserData
        def initialize(data)
            @data = data
        end

        def lines
            @data.map { yield(_1.split("\t")) }
        end
    end
end