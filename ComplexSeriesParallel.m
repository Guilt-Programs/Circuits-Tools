prompt = 'Do you have Impedance, or just component values? (I/C) ';
    x = input (prompt,'s');
    if x == 'I'
        prompt1 = 'What is the first impedance? ';
        z1 = input(prompt1);
        prompt2 = 'What is the second impedance? ';
        z2 = input(prompt2);
        prompt5 = 'Parallel or Series (p/s)? ';
        n = input(prompt5,'s');
        if n == 's'
            Ztot = z1+z2
        elseif n == 'p'
            Ztot = (z1*z2)/(z1+z2)
        else
            'Wrong input'       
        end
    elseif x == 'C'
        prompt1 = 'What is the Linear Frequency? ';
        f = input(prompt1);
        w = 2*pi*f;
        prompt2 = 'What is the Resistance? ';
        R = input(prompt2); 
        prompt3 = 'What is the Capacitance? ';
        C = input(prompt3);
        prompt4 = 'What is the Inductance? ';
        L = input(prompt4); 
        Xc = 1/(j*w*C);
        Xl = j*w*L;
        prompt5 = 'Parallel or Series (p/s)? ';
        n = input(prompt5,'s');
        if n == 's'
            z = Xc+Xl+R
        elseif n == 'p'
            z = (Xc*Xl*R)/(Xc+Xl+R)
        else
            'Wrong Input'       
        end
    else 
        "Invalid Input"
    end