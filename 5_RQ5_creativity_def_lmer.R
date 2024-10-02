# Load the dataset
df <- read.csv('data/expert_assessment.csv')

# Convert relevant columns to factors
df$username <- as.factor(df$username)
df$X3_relevance <- as.factor(df$X3_relevance)
df$X5_authorship_title <- as.factor(df$X5_authorship_title)
df$X5_authorship_synopsis <- as.factor(df$X5_authorship_synopsis)
df$title <- as.factor(df$title)
df$title_id <- as.factor(df$title_id)
df$title_writer <- as.factor(df$title_writer)
df$synopsis_writer <- as.factor(df$synopsis_writer)
df$experiment <- as.factor(df$experiment)
# Nota: La siguiente línea estaba duplicada en el código original y se ha eliminado
# df$title_id <- as.factor(df$title_id)

# Load the lmerTest package for mixed-effects modeling
library(lmerTest)

# Model 0: Baseline mixed-effects model
mixed0 <- lmer(
  X4_creativity_synopsis ~ 
    X1_attractive_style + 
    X1_attractive_theme + 
    X2_originality_style + 
    X2_originality_theme + 
    (1 | title) + 
    (1 | username), 
  data = df
)
summary(mixed0)

# Model 1: Including synopsis_writer and interaction terms
mixed1 <- lmer(
  X4_creativity_synopsis ~ 
    synopsis_writer + 
    X1_attractive_style * X1_attractive_theme * X2_originality_theme * X2_originality_style + 
    (1 | title) + 
    (synopsis_writer | username), 
  data = df
)
summary(mixed1)

# Model 2: Adding additional interaction terms related to title originality and attractiveness
mixed2 <- lmer(
  X4_creativity_synopsis ~ 
    synopsis_writer + 
    X2_originality_title * 
    X1_attractive_title * 
    X1_attractive_style * 
    X1_attractive_theme * 
    X2_originality_theme * 
    X2_originality_style + 
    (1 | title) + 
    (synopsis_writer | username), 
  data = df
)

# Compare Model 2 with Model 1 using ANOVA
anova(mixed2, mixed1)
