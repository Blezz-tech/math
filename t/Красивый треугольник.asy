import geometry;

// Первичные настройки

defaultpen(fontsize(10pt));
size(10cm);

// Цвета треугольника

var bg_color_triangle=RGB(218, 231, 241);
var border_color_triangle=RGB(15, 158, 254);

// Цвета угла

var bg_color_angle=RGB(153,208,169);
var border_color_angle=RGB(15, 158, 254)+0.5;

// Функция создания точки

void ddot(pair P, pen ccolor, real ssize) {
  dot(P, ccolor+(ssize)); dot(P, white+(ssize-1));
}

// Чертёж

pair A, B, C, L1, L2, L3, I;

A=(0,0); B=(1,3); C=(5,0);

triangle t=triangle(A, B, C);

fill(t, bg_color_triangle);

markangle(A, B, C, Fill(bg_color_angle), p=border_color_angle, radius=0.4cm);
draw(t, border_color_triangle); label(t);
ddot(A, border_color_triangle, 2.5);