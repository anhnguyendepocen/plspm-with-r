
satpls$outer_model

library(ggplot2)

ggplot(data = satpls$outer_model, aes(name, weight, fill=block)) +
  geom_bar(stat='identity', position='dodge')


ggplot(data = satpls$outer_model, aes(name, loading, fill=block)) +
  geom_bar(stat='identity', position='dodge') +
  geom_hline(yintercept = 0.7, color = 'gray50') +
  ggtitle("Loadings") +
  theme(axis.text.x = element_text(angle = 90))


ggplot(data = satpls$outer_model, aes(name, loading, fill=block)) +
  geom_bar(stat='identity', position='dodge') +
  geom_hline(yintercept = 0.7, color = 'gray50') +
  facet_grid(block ~ .) +
  ggtitle("Loadings") +
  theme(axis.text.x = element_text(angle = 90))



df1 = data.frame(
  a = c("Javi", "Rafa", "David", "Dani", "Loco"),
  b = 1:5)

df2 = data.frame(
  a = factor(c("Javi", "Rafa", "David", "Dani", "Loco"),
               levels = c("Javi", "Rafa", "David", "Dani", "Loco")),
  b = 1:5)


ggplot(data = df2, aes(a, b)) +
  geom_bar(stat='identity', position='dodge') +
  geom_hline(yintercept = 0.7, color = 'gray50') +
  ggtitle("Loadings") +
  theme(axis.text.x = element_text(angle = 90))
