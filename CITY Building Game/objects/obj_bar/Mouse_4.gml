if (can_click)
{
    // This enables us to click the bar to advance the slider
    if ((mouse_x > leftLimit) && (mouse_x < rightLimit))
    {
        a.x = mouse_x;
        a.clicked = true;
    }
}
