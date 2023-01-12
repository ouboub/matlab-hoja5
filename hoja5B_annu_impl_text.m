%% Prácticas de Matlab
%% Resolución de EDO con métodos implícitos
%% Hoja 5 B
%% Ejemplos para el punto fijo y el método de Newton
% *Nombre:*
% 
% *Apellido:*
% 
% *EMAIL:*
% 
% *DNI:*
% 
% *Atención:* Esta hoja está pensada para los alumnos que quieran implementar 
% los métodos implicitos de la hoja 5 mediante funciones externas, es decir |mifixsistem| 
% y  |minewtonsistem|. De todas formas, esta hoja es *opcional*.
%% Práctica 1 (Ejemplo para el punto fijo)
% Escribid en el apéndice A1 una función que implemente el método de punto fijo 
% para sistemas. 
% 
% $$\left(   \begin{array}{c}    x_1\\    \vdots\\    x_n  \end{array} \right)_{k+1}  
% =G \left(   \begin{array}{c}    x_1\\    \vdots\\    x_n  \end{array} \right)_{k}$$
% 
% Resolved el siguiente ejemplo
% 
% $$  \begin{array}{ccc}  f_1(x,y) & = & x^2 -2x -y + 0.5 \qquad \mbox{parábola} 
% \\  f_2(x,y) & = & x^2 +4 y^2 -4\qquad \mbox{elipse}  \end{array}$$
% 
% usando 
% 
% $$  \begin{array}{ccc}  x & = & \frac{x^{2} - y + 0.5}{2} \\  y & = & \frac{-x^2 
% - 4y^2 +8y +4}{8}  \end{array}$$
% 
% Para el punto inicial $(x_0,y_0) =(0,1)$ la sucesión converge a $(-0.2,1)$* 
% PERO* para el punto inicial $(x_0,y_0) =(2,0)$ la sucesión diverge. 
% 
% *Solución:*


%% Práctica 2 (Ejemplo para el método de Newton (sistemas))
% El método de Newton para sistemas está dado por
% 
% $$\left(   \begin{array}{c}    x_1\\    \vdots\\    x_n  \end{array} \right)_{k+1}  
% =\left(   \begin{array}{c}    x_1\\    \vdots\\    x_n  \end{array} \right)_{k}  
% -  J^{-1}_k\left(   \begin{array}{c}    f_1(x_1,...,x_n)\\    \vdots\\    f_n(x_1,...,x_n)  
% \end{array} \right)_k  \qquad  J=\left(   \begin{array}{ccc}    \frac{\partial 
% f_1}{\partial x_1}& \ldots &  \frac{\partial f_1}{\partial x_n} \\    \vdots 
% &\ldots&\vdots\\    \frac{\partial f_n}{\partial x_1}& \ldots &  \frac{\partial 
% f_n}{\partial x_n} \\  \end{array} \right)$$
% 
% Aplícalo para el siguiente sistema
% 
% $$    \left\{      \begin{array}{ccccccc}        {\rm e}^{x} + xy -1  &=&  
% 0\\        {\rm sen}(xy) + x + y - 1  &=&  0      \end{array}    \right.$$
% 
% partiendo del punto $(x_{0},y_{0})=(0.5,0.5)$.
% 
% *Importante:* el jacobiano puedes calcularlo con el comando simbólico, pero 
% no uses variables _simbólicas_ en el bucle. ¡Tampoco uses la inversa del jacobiano! 
% El comando *inv(J)* está *prohibido*. Transforma $J^{-1}F$ en un sistema lineal 
% equivalente y aplica un comando intrínseco de Matlab para resolver dicho sistema.
% 
% *Solución:*


%% Apéndice: la implementación de las prácticas 1+2

function [y,ev,loop]=mifixsystem(f,y0,TOL,nmax) 
disp('H4: file: mieulerimpfix Alumno')
end
%%
function [y,ev,loop]=minewtonsystem(f,Jf,y0,TOL,nmax)
disp('H4: file: mieulerimpfixpc Alumno')
end