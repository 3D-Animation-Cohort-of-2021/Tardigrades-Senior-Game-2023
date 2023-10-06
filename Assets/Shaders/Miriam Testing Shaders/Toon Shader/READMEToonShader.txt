READ ME!!!!!!

This is instructions for how to use the Toon Shader in post processing:

---------
Checking If the Renderer is Working Correctly With Your Work

There will be separate materials for each texture atlas and texture brush and each will have an "render objects" override
on the URP High Fidelity Renderer. if you need to check if something is renderering right, you can:

    1. Search for the "URP High Fidelity Renderer" and find the toon option you want to check.
    2. Click the "layer mask" to see what layers this toon will show up on.
    3. Change your asset to one of the layers that the toon covers.
    
    If you need a more expansive check, you can change the layer mask to default or whichever layer you need to check,
    just make sure not to leave it active on a layer it's not supposed to be on.
        
        **Make extra sure to change the settings back before you make a pull request** 
    Since because the renderer is automatically applied across the entire game, and if we pull the wrong settings that 
    will mess up other teammates. In particular, do not pull changes where the renderer is active on the default layer.
    
If there is a problem, let me (Miriam) know and I can help or change what we need to make it work with your stuff.
_________

_________
If you need a new texture added to the renderer, you can create the material in the "Toons Final Mat" folder and 
message me what layers you are looking for it to get applied to and I'll add it, just so the layer settings all stay 
correct. 

Creating the Mat:

    Standard Toon Shader: There is only one variable that you have to worry about after you have created the texture, 
    just change the main texture to whatever texture it needs to be.
    
    Color Toon Shader: This only has the one color variable as well. You can just change it to whatever you need.
    
If any other kind of Mat comes up, let me know and I'll help make it/fix it.
** Note that neither of these work correctly on the polybrushes/assets made with cards that Nate has made.
_________
    
    