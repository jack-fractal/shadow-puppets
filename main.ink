#title: Shadow Puppets
#author: June and Jack


VAR display_panels = true
VAR left_background = ""
VAR left_foreground = ""
VAR right_background = ""
VAR right_foreground = ""


This is a story.

- (start)

+   [Run height test]
    -> lorum_ipsum
+   [Run show panels test]
    -> show_panels_test


=== lorum_ipsum ===

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque commodo sapien at nisl iaculis semper. Quisque placerat urna in pharetra imperdiet. Maecenas non libero hendrerit, feugiat purus nec, sodales ex. Sed tincidunt, metus a tincidunt pellentesque, nibh nisi vehicula tortor, sit amet faucibus justo nisi consectetur risus. Vestibulum pretium blandit lectus nec venenatis. Nam at convallis felis. Mauris purus nulla, hendrerit id libero non, fermentum pretium nisi. Aliquam eget posuere dolor. Nunc facilisis, tortor eget tincidunt imperdiet, ligula nisl sollicitudin tortor, sed hendrerit massa velit ac nibh. Proin erat lacus, placerat nec tortor eu, tempor aliquet sapien. Mauris nec orci eu massa sagittis vehicula vel at lectus. Integer imperdiet efficitur risus et tincidunt. Praesent et urna id lacus maximus fermentum porttitor ac justo. Morbi facilisis efficitur dui, tempus tempor libero aliquam a.

Morbi pulvinar viverra hendrerit. Pellentesque et nibh libero. Nullam laoreet, ex at aliquam ornare, dolor leo ullamcorper lectus, ac auctor ex metus a dui. Aenean eros sem, porttitor vitae mi vitae, dignissim pharetra risus. Nam ultricies facilisis leo, a tristique ex fringilla id. Nullam eget elit vitae mauris pulvinar tincidunt. Duis ut sem id mauris fermentum lacinia at non libero. Morbi fringilla dolor convallis metus finibus vehicula. Phasellus justo augue, sagittis vel nibh ac, eleifend vehicula neque. Nulla eu orci quis metus porta vulputate. Aliquam vehicula elit diam, a pretium ligula convallis at. Aenean maximus est vitae lobortis dignissim. Nam fringilla suscipit sapien, accumsan sagittis nibh accumsan vel.

Cras maximus quam et convallis rhoncus. Praesent vitae arcu turpis. Integer luctus justo sed laoreet efficitur. Proin eleifend mauris eu turpis sagittis, auctor cursus nibh rutrum. Ut est tellus, pretium in fermentum nec, auctor non nisi. Aliquam id elementum diam. Proin semper lorem nec diam congue vestibulum eu sit amet tortor. Nullam quis semper massa.

Cras malesuada cursus quam, vitae condimentum urna venenatis et. Morbi laoreet orci non velit tincidunt, sit amet egestas ante tristique. Quisque aliquam arcu non velit porta tincidunt. Sed est velit, ultricies suscipit nisl vel, tempor pulvinar urna. Sed sit amet quam purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla venenatis elementum malesuada. Pellentesque non tellus ultricies, mattis dui non, accumsan libero.

Maecenas metus nisl, facilisis at maximus non, viverra in risus. Praesent a odio eu dolor bibendum aliquet. Nullam varius lorem eu massa congue, et iaculis lectus consectetur. Vestibulum non euismod arcu, in ultricies dui. Suspendisse potenti. Fusce in consectetur lacus. In ut lorem id nunc tempus luctus id eget purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Duis hendrerit dapibus velit ut venenatis.

-> start

=== show_panels_test === 

Showing the panels : {display_panels}
+   [Quit]
    -> start
+   [Show panels]
    ~ display_panels = true
    ~ left_background = "testing_bg"
    ~ left_foreground = "testing_fg"
    ~ right_background = "testing_bg_alt"
    ~ right_foreground = "testing_fg_alt"
    -> show_panels_test
+   [Hide panels]
    ~ display_panels = false
    -> show_panels_test
+   Left
    ++  [Back]
        +++ [Clear]
            ~ left_background = ""
        +++ [Normal]
            ~ left_background = "testing_bg"
        +++ [Alt]
            ~ left_background = "testing_bg_alt"
    ++  [Front]
        +++ [Clear]
            ~ left_foreground = ""
        +++ [Normal]
            ~ left_foreground = "testing_fg"
        +++ [Alt]
            ~ left_foreground = "testing_fg_alt"
+   [Right]
    ++  [Back]
        +++ [Clear]
            ~ right_background = ""
        +++ [Normal]
            ~ right_background = "testing_bg"
        +++ [Alt]
            ~ right_background = "testing_bg_alt"
    ++  [Front]
        +++ [Clear]
            ~ right_foreground = ""
        +++ [Normal]
            ~ right_foreground = "testing_fg"
        +++ [Alt]
            ~ right_foreground = "testing_fg_alt"
- -> show_panels_test
















