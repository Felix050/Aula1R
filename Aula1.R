
#install.packages("ggplot2")
library(ggplot2)


#Grafico de linha
#Ideal para duas variaveis quantitativas
#Exemplo

?pressure
ggplot(data = pressure) +
  geom_line(mapping=aes(x=temperature, y=pressure))



#Grafico de Dispersao
#ideal para duas variaveis quantitativas

ggplot(data=pressure)+
  geom_point(mapping=aes(x=temperature, y=pressure))


#Juntando Graficos de linha e dispersao

ggplot(data=pressure)+
  geom_point(mapping=aes(x=temperature, y=pressure)) +
  geom_line(mapping=aes(x=temperature, y=pressure))



#camadas de um grafico-------------

p<-ggplot(data=pressure)+
  geom_point(mapping=aes(x=temperature, y=pressure)) +
  geom_line(mapping=aes(x=temperature, y=pressure))


p
p$layers
p$layers[1]<-NULL
p
p$layers


#Montando o grafico por camadas-----------
p<-ggplot(data=pressure)
p
p<-p+geom_line(mapping = aes(x=temperature, y=pressure))
p
p<-p+geom_point(mapping = aes(x=temperature, y=pressure))
p

#acrescentando informacoes ao grafico------------
p<-ggplot(data=pressure)+
  geom_point(mapping=aes(x=temperature, y=pressure), color='darkblue') +
  geom_line(mapping=aes(x=temperature, y=pressure), color='red') +
  labs(title = "Pressao do vapor de Mercurio",
       subtitle = "Temperatura em graus Celsius e pressao em milimetros de mercurio",
       x = "Temperatura",
       y = "Pressao",
       caption = "Bonato que disse, pergunta pra ele")
  theme_classic()
p

p<-p+theme_linedraw()
p

p<-p+theme_void()
p

#Desafio - ?Faithful & geom_smooth, x=eruptions , y=waiting
?faithful
ggplot(data = faithful) +
  geom_smooth(mapping = aes(x=eruptions, y=waiting), color='red') +
  geom_point(mapping = aes(x=eruptions, y=waiting), color='darkblue') + 
  labs(title = "Desafio",
       x = "erupcao",
       y = "Espera")
