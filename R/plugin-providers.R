leafletProviderDependencies <- function() {
  list(
    htmltools::htmlDependency(
      "leaflet-providers",
      "1.0.27",
      system.file("htmlwidgets/lib/leaflet-providers", package = "leaflet"),
      script = "leaflet-providers.js"
    ),
    htmltools::htmlDependency(
      "leaflet-providers-plugin",
      packageVersion("leaflet"),
      system.file("htmlwidgets/plugins/leaflet-providers-plugin", package = "leaflet"),
      script = "leaflet-providers-plugin.js"
    )
  )
}

#' @export
addProviderTiles <- function(
  map,
  provider,
  layerId = NULL,
  options = providerTileOptions()
) {
  map$dependencies <- c(map$dependencies, leafletProviderDependencies())
  appendMapData(map, getMapData(map), 'providerTileLayer',
    provider, layerId, options)
}

#' @export
providerTileOptions <- function() {
  list()
}
