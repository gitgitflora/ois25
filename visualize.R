# visualisez une distribution avec une courbe de densité

# Charger les bibliothèques nécessaires
library(ggplot2)

# Générer des données aléatoires
set.seed(123)
data <- data.frame(
  x = rnorm(1000, mean = 0, sd = 1)  # Données normales
)

# Créer un graphique de densité avec ggplot2
plot <- ggplot(data, aes(x = x)) +
  geom_density(fill = "blue", alpha = 0.5) +  # Densité de la variable
  geom_rug(sides = "b", color = "red") +      # Ajouter un rug plot (barres)
  theme_minimal() +                          # Thème minimal
  labs(
    title = "Graphique de densité avec courbe de tendance",
    x = "Valeurs de x",
    y = "Densité"
  )

# Afficher le graphique
print(plot)
