classdef memory

    properties
        positionLog
    end

    methods

        function obj = memory()

            obj.positionLog = [];

        end

        function obj = remember(obj, position)

            obj.positionLog = [obj.positionLog; position];

        end

    end

end