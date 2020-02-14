class ApiVersionConstraint
    def initialize(opitions)
        @version = opitions[:version]
        @default = opitions[:version]
    end
    
    def matches?(res)
        @default || req.headers['Accept'].include?("application/vnd.projetofase8.v#{@version}")
    end
end