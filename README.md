# PushState Bug Reproduction

This application renders a layout containing two LiveViews: `PageLive` and `BreadcrumbsLive`. The application router contains only
two routes, both of which point to `PageLive`. `PageLive` renders a template that includes `live_link` elements that link to
`PageLive` with new path parameters.

The expected behaviour, upon hitting clicking of these `live_link` elements, is that the contents of the `PageLive` LiveView are
updated. However, instead the contents of the `BreadcrumbsLive` are updated, resulting in doubling of the `PageLive` content. The
application works as expected only if the `PageLive` LiveView is the first LiveView rendered; either by moving the `BreadcrumbsLive`
LiveView past it in the DOM or by removing `BreadcrumbsLive` altogether.
