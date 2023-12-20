#' @title view theme
#' @description
#' easy view theme for ggplot
#'
#' @param family font family
#' @param x.size,y.size,t.size,s.size,l.size x axis, y axis, title, strip,
#'   legend text size
#' @param x.face,y.face,t.face,s.face,l.face x axis, y axis, title, strip,
#'   legend text face
#' @param x.angle,y.angle x axis, y axis text angle
#' @param x.hjust,x.vjust,y.hjust,y.vjust horizontal, vertical adjustment
#' @param legend.key.size,legend.key.height,legend.key.width
#'   size of legend keys (`unit`); key background height & width inherit from
#'   `legend.key.size` or can be specified separately
#' @param legend.position the default position of legends ("none", "left",
#'   "right", "bottom", "top", "inside")
#' @param panel.background background of plotting area, drawn underneath plot
#'   ([element_rect()]; inherits from `rect`)
#'
#' @export
theme_view <- function(family = "Comic Sans MS", x.size = NULL, y.size = NULL,
                       t.size = NULL, s.size = NULL, l.size = NULL,
                       x.face = "plain", y.face = "plain", t.face = "plain",
                       s.face = "plain", l.face = "plain", x.angle = 0,
                       y.angle = 0, x.hjust = .5, x.vjust = .5, y.hjust = NULL,
                       y.vjust = NULL, legend.key.size = NULL,
                       legend.key.height = NULL, legend.key.width = NULL,
                       legend.position = "right", panel.background = NULL) { # original default: panel.background = element_rect()
  list(
    theme(
      text  = element_text(family = family),
      title = element_text(family = family, size = t.size, face = t.face),
      strip.text.x = element_text(size = s.size, face = s.face),
      axis.text.x  = element_text(size = x.size, face = x.face, angle = x.angle,
                                  hjust = x.hjust, vjust = x.vjust),
      axis.text.y  = element_text(size = y.size, face = y.face, angle = y.angle,
                                  hjust = y.hjust, vjust = y.vjust),
      legend.title = element_text(size = l.size, face = l.face),
      legend.text  = element_text(size = l.size, face = l.face),
      legend.key.size = legend.key.size,
      legend.key.height = legend.key.height,
      legend.key.width = legend.key.width,
      legend.position = legend.position,
      panel.border = element_rect(colour = "black", fill = NA),
      panel.background = panel.background,
      strip.background = element_rect(colour = "black")
    )
  )
}

#' @title shiny theme
#' @description
#' easy shiny theme for ggplot
#'
#' @param family font family
#' @param x.size,y.size,t.size,s.size,l.size x axis, y axis, title, strip,
#'   legend text size
#' @param x.face,y.face,t.face,s.face,l.face x axis, y axis, title, strip,
#'   legend text face
#' @param x.angle,y.angle x axis, y axis text angle
#' @param x.hjust,x.vjust,y.hjust,y.vjust horizontal, vertical adjustment
#' @param legend.key.size,legend.key.height,legend.key.width
#'   size of legend keys (`unit`); key background height & width inherit from
#'   `legend.key.size` or can be specified separately
#' @param legend.position the default position of legends ("none", "left",
#'   "right", "bottom", "top", "inside")
#' @param panel.background background of plotting area, drawn underneath plot
#'   ([element_rect()]; inherits from `rect`)
#' @param plot.background.fill fill background of the entire plot
#'
#' @export
theme_shiny <- function(family = "Comic Sans MS", x.size = 12, y.size = 12,
                        t.size = 14, s.size = 14, l.size = 12, x.face = "plain",
                        y.face = "plain", t.face = "plain", s.face = "plain",
                        l.face = "plain", x.angle = 0, y.angle = 0, x.hjust = .5,
                        x.vjust = .5, y.hjust = NULL, y.vjust = NULL,
                        legend.key.size = NULL, legend.key.height = NULL,
                        legend.key.width = NULL, legend.position = "right",
                        panel.background = NULL,
                        plot.background.fill = "transparent") { # original default: panel.background = element_rect() #ECF0F5
  list(
    theme(
      text  = element_text(family = family),
      title = element_text(family = family, size = t.size, face = t.face),
      strip.text.x = element_text(size = s.size, face = s.face),
      axis.text.x  = element_text(size = x.size, face = x.face, angle = x.angle,
                                  hjust = x.hjust, vjust = x.vjust),
      axis.text.y  = element_text(size = y.size, face = y.face, angle = y.angle,
                                  hjust = y.hjust, vjust = y.vjust),
      legend.title = element_text(size = l.size, face = l.face),
      legend.text  = element_text(size = l.size, face = l.face),
      legend.key.size = legend.key.size,
      legend.key.height = legend.key.height,
      legend.key.width  = legend.key.width,
      legend.position   = legend.position,
      panel.border = element_rect(colour = "black", fill = NA),
      panel.background  = panel.background,
      strip.background = element_rect(colour = "black"),
      plot.background = element_rect(
        fill = plot.background.fill,
        colour = plot.background.fill
      )
    )
  )
}

#' @title save theme
#' @description
#' easy xlsx save theme for ggplot
#'
#' @param family font family
#' @param x.size,y.size,t.size,s.size,l.size x axis, y axis, title, strip,
#'   legend text size
#' @param x.face,y.face,t.face,s.face,l.face x axis, y axis, title, strip,
#'   legend text face
#' @param x.angle,y.angle x axis, y axis text angle
#' @param x.hjust,x.vjust,y.hjust,y.vjust horizontal, vertical adjustment
#' @param legend.key.size,legend.key.height,legend.key.width
#'   size of legend keys (`unit`); key background height & width inherit from
#'   `legend.key.size` or can be specified separately
#' @param legend.position the default position of legends ("none", "left",
#'   "right", "bottom", "top", "inside")
#' @param panel.background background of plotting area, drawn underneath plot
#'   ([element_rect()]; inherits from `rect`)
#'
#' @export
theme_save <- function(family = "Comic Sans MS", x.size = 12, y.size = 12,
                       t.size = 14, s.size = 14, l.size = 12, x.face = "plain",
                       y.face = "plain", t.face = "plain", s.face = "plain",
                       l.face = "plain", x.angle = 0, y.angle = 0, x.hjust = .5,
                       x.vjust = .5, y.hjust = NULL, y.vjust = NULL,
                       legend.key.size = NULL, legend.key.height = NULL,
                       legend.key.width = NULL, legend.position = "right",
                       panel.background = NULL) { # original default: panel.background = element_rect()
  list(
    theme(
      text  = element_text(family = family),
      title = element_text(family = family, size = t.size, face = t.face),
      strip.text.x = element_text(size = s.size, face = s.face),
      axis.text.x  = element_text(size = x.size, face = x.face, angle = x.angle,
                                  hjust = x.hjust, vjust = x.vjust),
      axis.text.y  = element_text(size = y.size, face = y.face, angle = y.angle,
                                  hjust = y.hjust, vjust = y.vjust),
      legend.title = element_text(size = l.size, face = l.face),
      legend.text  = element_text(size = l.size, face = l.face),
      legend.key.size = legend.key.size,
      legend.key.height = legend.key.height,
      legend.key.width = legend.key.width,
      legend.position = legend.position,
      panel.border = element_rect(colour = "black", fill = NA),
      panel.background  = panel.background,
      strip.background = element_rect(colour = "black")
    )
  )
}
