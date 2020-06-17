library(pacman)
p_load(tidyverse, agricolae, extrafont)
insta
#font_import()#se importa por única vez
loadfonts(device="win") #se carga cuando se vaya a trabajar en una nueva sesión al
# similar a cargar una librería, device = "win" es para cagrar las fuentes de windows
fonts()#vector con todas las fuentes del sistema
fonttable()#carga las fuentes como tabla

data("soil")#data de libría agricolae
windowsFonts(A = windowsFont("Times New Roman")) # sirve para renombrar una fuente por
# un nombre más corto, es opcional 
p <- ggplot()+
  geom_point(data=soil, mapping = aes(x=pH, y=EC))+
  labs(x="pH", y="Conductividad eléctrica", title = "Propiedades del suelo")+
  theme_bw()+
  theme(text=element_text(family="A", face = "bold", size = 12),
        plot.title = element_text(hjust = 0.5))
ggsave(plot=p, 'GRAFICOS/tutorialfont.png', width = 15, height = 7, dpi = 300)#la
# dirección se debe cambiar por la ruta interna del equipo 
