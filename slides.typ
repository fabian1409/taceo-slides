#import "./style.typ": *
#import "@preview/fletcher:0.5.3" as fletcher: diagram, node, edge

#show: taceo-theme.with(
  footer: [Fabian Gruber],
  progress-bar: true
)

#enable-handout-mode(true)
#set text(font: "Fira Sans", weight: "regular", size: 20pt)
// #show math.equation: set text(font: "Fira Math")
#set strong(delta: 100)
#set par(justify: false)

#title-slide(
  author: [Fabian Gruber],
  title: [MPC GeoTools],
  subtitle: [GeoTools combined with Multi-Party Computation],
  date: [December 12, 2024],
)

#slide(title: "Motivation")[
  #line-by-line(mode: "transparent")[
    - Preserve privacy
    - Secret computation with geo-spatial data
      - Distance between two parties
      - Bearing to other party
      - Check if inside area
  ]
]

#slide(title: "Earth")[
  #side-by-side(columns: (1fr, 1fr))[
    #line-by-line(mode: "transparent")[
    - Sadly, the earth is not flat :(
    - Computation would be much easier
    ]
  ][
    #image("figures/flat_earth.jpg", width: 100%)
  ]
]

#slide(title: "Earth")[
  #side-by-side(columns: (1fr, 1fr))[
    #line-by-line(mode: "transparent")[
    - Earth is round (actually oblate spheroid, but who cares)
    - Computation not as easy
    ]
  ][
    #image("figures/round_earth.png", width: 100%)
  ]
]


#slide(title: "Great-Circle Distance")[
  #side-by-side(columns: (1fr, 1fr))[
    #line-by-line(mode: "transparent")[
    - Distance between two points on sphere
    - Haversine formula, chord length
    - Points are (latitude $phi$, longitude $lambda$)
    - Secret-shared locations
    ]
  ][
    $
      Delta x &= cos phi_2 cos lambda_2 - cos phi_1 cos lambda_1 \
      Delta y &= cos phi_2 sin lambda_2 - cos phi_1 sin lambda_1 \
      Delta z &= sin phi_2 - sin phi_1 \
      Delta sigma_c &= sqrt(Delta x^2 + Delta y^2 + Delta z^2)
    $
  ]
]

#slide(title: "Vienna - Graz")[
  Distance in MPC $144.55 "km"$ real $144.51 "km"$
  #side-by-side(columns: (1fr, 1fr))[
    #image("figures/graz_vienna.png", width: 90%)
  ][
    #image("figures/vienna_graz.png", width: 90%)
  ]
]

#slide(title: "Vienna - Graz")[
  #side-by-side(columns: (1fr, 1fr))[
    #line-by-line(mode: "transparent")[
    - Absolute bearing $209.42 degree$
    - Only inital bearing is revealed
    ]
  ][
    #image("figures/bearing.png", width: 80%)
  ]
]

#slide(title: "Point in Polygon")[
  #side-by-side(columns: (1fr, 1fr))[
    #line-by-line(mode: "transparent")[
      - Given the vertices of polygon on Mercator projection
      - Return true if other party inside; else false
      - Polygon can be public or secret
    ]
  ][
    #image("figures/point_in_polygon.png", width: 90%)
  ]
]

#slide(title: "In Austria?")[
  #image("figures/inside_at_query.png", width: 90%)
]

#slide(title: "In Austria?")[
  #image("figures/inside_at.png", width: 90%)
]

#slide(title: "In Austria?")[
  #image("figures/outside_at_query.png", width: 90%)
]

#slide(title: "In Austria?")[
  #image("figures/outside_at.png", width: 90%)
]

#slide(title: "")[
  #align(center, text(size: 40pt, "Thank you for your Attention!"))
]
