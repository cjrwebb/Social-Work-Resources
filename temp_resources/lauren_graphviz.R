# Lauren graphVis

library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)
library(tidyverse)
library(convertGraph)


DiagrammeR::grViz("digraph {
  
  graph[layout = dot, rankdir = TB]
  
  stationary[label='Stationary\nShop', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  r_off[label='Research\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  locker[label='Locker', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  res_partic[label='Research\nParticipant', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office2[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort2[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag2[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  
  stationary -> r_off
  r_off -> {locker post_office}
  post_office -> post_sort -> post_bag -> res_partic -> post_office2 -> post_sort2 -> post_bag2 -> r_off
  
  }")

DiagrammeR::grViz("digraph {
  
  graph[layout = circo, rankdir = LR]
  
  stationary[label='Stationary\nShop', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  r_off[label='Research\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  locker[label='Locker', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  res_partic[label='Research\nParticipant', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office2[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort2[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag2[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  
  stationary -> r_off
  r_off -> {locker post_office}
  post_office -> post_sort -> post_bag -> res_partic -> post_office2 -> post_sort2 -> post_bag2 -> r_off
  locker -> r_off
  
  }")


DiagrammeR::grViz("digraph {
  
  graph[layout = dot, rankdir = LR]
  
  stationary[label='Stationary\nShop', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  r_off[label='Research\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  locker[label='Locker', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  res_partic[label='Research\nParticipant', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  
  stationary -> r_off
  r_off -> locker
  r_off -> post_office[dir='both']
  post_office -> post_sort -> post_bag -> res_partic -> post_office
  
  }")



DiagrammeR::grViz("digraph {
  
  graph[layout = circo, rankdir = LR]
  
  stationary[label='Stationary\nShop', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  r_off[label='Research\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  locker[label='Locker', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  res_partic[label='Research\nParticipant', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office2[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort2[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag2[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  
  stationary -> r_off
  r_off -> {locker post_office}
  post_office -> post_sort -> post_bag -> res_partic -> post_office2 -> post_sort2 -> post_bag2 -> r_off
  locker -> r_off
  
  }") 
# %>% for exporting
#   export_svg %>% charToRaw %>% rsvg_svg(., "temp_resources/lw_dia1.svg")


DiagrammeR::grViz("digraph {
  
  graph[layout = circo, rankdir = LR]
  
  stationary[label='Stationary\nShop', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  r_off[label='Research\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  locker[label='Locker', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  res_partic[label='Research\nParticipant', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_office2[label='Post\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_sort2[label='Postal\nSorting\nOffice', height=1.5, width=1.5, style='filled', fillcolor='AliceBlue', color='White', fontname='Futura']
  post_bag2[label='Postie&rsquo;s\nBag', height=1.5, width=1.5, style='filled', fillcolor='Thistle', color='White', fontname='Futura']
  
  stationary -> r_off
  r_off -> {locker post_office}
  post_office -> post_sort -> post_bag -> res_partic -> post_office2 -> post_sort2 -> post_bag2 -> r_off
  locker -> r_off
  
  }") 


library(lattice)
t<-seq(-2*pi, 2*pi, length.out=200)
cloud(z~x+y,data.frame(x=3*cos(t),y=3*sin(t), z=2*t))

t <- seq(0, 2*pi, length.out=100); 
u <- seq(0, 2*pi, length.out=100); 
tu<-expand.grid(t=t,u=u)
R <- 6; # size of hole (larger = bigger)
r <- 3; 
tu <- transform(tu, 
                x = cos(t)*(R+r*cos(u)), 
                y = sin(t)*(R+r*cos(u)),
                z = r*sin(u)
)

rr<-c(-10,10)
cloud(z~x+y, tu, xlim=rr, ylim=rr, zlim=rr, screen=list(y=20))

xm<-outer(t,u,function(t, u)cos(t)*(R+r*cos(u)))
ym<-outer(t,u,function(t, u)sin(t)*(R+r*cos(u)))
zm<-outer(t,u,function(t, u) r*sin(u))

rr<-c(-10,10)
wireframe(zm~xm+ym, xlim=rr, ylim=rr, zlim=rr, screen=list(y=30))

ax <- list(
  title = "",
  zeroline = FALSE,
  showline = FALSE,
  showticklabels = FALSE,
  showgrid = FALSE
)

plotly::plot_ly(x=xm, y=ym, z=zm, type = "surface", 
                showscale = FALSE, hoverinfo = 'skip',
                colorscale = list(c(0, 1), c("tan", "pink"))
                ) %>%
  plotly::layout(scene = list(xaxis=ax,yaxis=ax,zaxis=ax), dragmode = "orbit",
                 lighting=list(diffuse=0, specular = 0, fresnel = 0, roughness = 1))

# TODO: Add slider. Comment/annotations?