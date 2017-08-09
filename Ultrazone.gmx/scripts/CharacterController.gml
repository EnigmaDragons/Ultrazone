_speed = 3;
_jump = 9;

_horizontalMovement = _speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
_predictedX = x + _horizontalMovement;
while (collision_circle(_predictedX, y, 10, all, false, true) != noone) {
    _predictedX -= sign(_horizontalMovement);
}
x = _predictedX;

if (keyboard_check_pressed(vk_up) == 1 && collision_circle(x, y + 1, 10, all, false, true) != noone) {
    _verticalSpeed = _jump + 1;
}

_verticalSpeed--;
_predictedY = y - _verticalSpeed;
while (collision_circle(x, _predictedY, 10, all, false, true) != noone) {
    _verticalSpeed++;
    _predictedY--;
}

y = _predictedY;
