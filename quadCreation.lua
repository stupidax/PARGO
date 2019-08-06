function quadCreation(image, quadWidth, quadHeight)
  local quad = {}
  quadHeight = quadHeight or 20
  quadWidth = quadWidth or 20
  for ligne = 0, image:getHeight() - quadHeight, quadHeight do
    for colonne = 0, image:getWidth() - quadWidth, quadWidth do
      table.insert(quad,love.graphics.newQuad(colonne,ligne,quadWidth,quadHeight, image:getDimensions()))
    end
  end
  return quad
end