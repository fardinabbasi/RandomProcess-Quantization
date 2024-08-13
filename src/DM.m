function [bit_code, output] = DM(input, del)
    bit_code = zeros(size(input));
    output = zeros(size(input));
    for i = 1:length(input)-1
        if output(i) <= input(i)
            bit_code(i) = 1; 
            output(i+1)= output(i) + del;
        else
            bit_code(i) = 0;
            output(i+1) = output(i) - del;
        end
    end
end