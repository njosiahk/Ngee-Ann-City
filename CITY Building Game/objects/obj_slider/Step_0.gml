// Check if the left mouse button is not clicked
if (!mouse_check_button(mb_left))
{
    grab = false; // Slider is not clicked, therefore not grabbed
}
else if (!grab && !clicked) // If this object is not being grabbed and not clicked
{
    // If not grabbed and not clicked, do nothing
    exit;
}
else // Otherwise change its coordinates
{
    // If we slide within the constraints, update the slider's coordinates
    if ((mouse_x + xx) > leftLimit && (mouse_x + xx) < rightLimit)
    {
        x = mouse_x + xx;
    }
    else if ((mouse_x + xx) < leftLimit) // Set at left limit if the user wants to slide
    {
        x = leftLimit;
    }
    else if ((mouse_x + xx) > rightLimit) // Set at right limit if the user wants to slide
    {
        x = rightLimit;
    }       
}

// Work out the percentage value
percentage = round(((x - leftLimit) / (rightLimit - leftLimit)) * 100);
clicked = false;








