# xojo-web-badges
[Bootstrap's Badges](https://getbootstrap.com/docs/4.6/components/badge/) for [Xojo Web](https://xojo.com/).

This is a module that allows you to set badges on visual controls:    
<img width="806" alt="badges-screenshot" src="https://user-images.githubusercontent.com/601856/199590426-e8793f2d-786f-4b23-87af-b7da83e7d4f9.png">

It contains two new methods, available in any control that inherits from WebUIControl:    
<img width="288" alt="module-extension-methods" src="https://user-images.githubusercontent.com/601856/199590919-aeae6202-5a1c-4d2f-9bab-d11a739b7d07.png">

Extension methods are a simple and powerful way to extend internal Xojo classes. You can read more about this module feature here:    
[Using Xojo Language](https://documentation.xojo.com/getting_started/using_the_xojo_language/) > [Modules](https://documentation.xojo.com/getting_started/using_the_xojo_language/modules.html) > [Extension Methods](https://documentation.xojo.com/getting_started/using_the_xojo_language/modules.html#extension-methods)

# How to use
Three simple steps:    
1. Download and open the project
2. Copy the WebExtensions module into your project
3. That's it, now you can use `SetBadge` and `RemoveBadge` on your controls

## SetBadge
Used to set the badge on any WebUIControl. You can use the following parameters:
- **caption**: The caption of the badge. If you just want to display a round circle, use an space
- **indicator**: One of the Bootstrap's indicators: "primary", "secondary", "success", "danger" (default), "warning", "info", "light" or "dark"
- **top** and **right**: Use these values to adjust the badge position. It will be -10 by default in both parameters

### Example
```xojo
UsernameTextField.SetBadge("OK", "success")
EmailTextField.SetBadge("It can't be blank")
PasswordTextField.SetBadge("Too little", "danger", -10, 30)
NotificationButton.SetBadge(" ")
```

## RemoveBadge
Used to remove the badge from any WebUIControl.

### Example
```xojo
NotificationButton.RemoveBadge
```
