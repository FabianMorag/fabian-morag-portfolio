// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Fabián Morag",
  footer: context { [Fabián Morag - Página #str(here().page()) de #str(counter(page).final().first())] },
  top-note: [ #emph[Última actualización Ene 2026] ],
  locale-catalog-language: "es",
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: false,
  colors-body: rgb(64, 64, 64),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 1,
    day: 9,
  ),
)


= Fabián Morag

#connections(
  [#connection-with-icon("location-dot")[Valdivia, Chile]],
  [#link("mailto:contacto@fabianmorag.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[contacto\@fabianmorag.com]]],
  [#link("tel:+56-9-9441-2678", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[+56 9 9441 2678]]],
  [#link("https://fabianmorag.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[fabianmorag.com]]],
  [#link("https://linkedin.com/in/Fabian-Morag", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Fabian-Morag]]],
  [#link("https://github.com/FabianMorag", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[FabianMorag]]],
)


== ¡Hola!

Soy Ingeniero Civil en informática, cuento con conocimientos en distintas tecnologías de vanguardia y más de 3 años de experiencia. Soy un profesional adaptable, con ganas de contribuir a un buen ambiente laboral y trabajar en un entorno colaborativo. Abierto a nuevas oportunidades y desafíos, busco consolidar mi carrera y seguir creciendo en el campo de la informática y el desarrollo.

== Educación

#education-entry(
  [
    #strong[Universidad Austral de Chile], Ingeniería civil en informática

    - Titulado con distinción máxima

  ],
  [
    Valdivia, Chile

    Mar 2017 – May 2022

  ],
  degree-column: [
    #strong[Sup]
  ],
)

== Experiencia

#regular-entry(
  [
    #strong[Innovex SPA], Ingeniero de desarrollo

    - Desarrollo principalmente frontend en la modernización de aplicaciones de monitorización, métricas y gráficos para clientes del rubro agropecuario (TypeScript, React 18\/19, TanStack).

    - Creación de nuevos endpoints para API de extracción y actualización de datos de monitorización junto al mejoramiento de manejo de errores HTTP. Además de apoyo en el modelamiento de nuevas entidades (Python, Django, SQLite)

    - Testing de funciones y componentes React (Vitest, React testing library)

    - Desarrollo con especial atención a la mantenibilidad, aplicación de principios SOLID, patrones de diseño y el UX

    - Redacción de documentación en formato JSDoc\/TypeDoc

    - Manejo de contenedores Linux para pruebas y pasos a producción (Nginx, Apache, Ansible, Podman, Docker)

  ],
  [
    Valdivia, Chile

    Jul 2025 – presente

  ],
)

#regular-entry(
  [
    #strong[Freelance], Ingeniero de software

    - Desarrollo web full stack de aplicaciones privadas y sitios web públicos para personas y empresas (Next.js 14, Astro, Tailwind CSS 4, WordPress, GCP, Hostinger, DNS)

    - Toma de requerimientos directamente con clientes

    - Desarrollo con atención al SEO para optimizar sitios en motores de búsqueda

    - Mantención de infraestructura y respaldos para distintas aplicaciones en GCP

    - Refactoring de componentes React y Astro en sitios web públicos

    - Automatización de despliegues a producción mediante jobs y webhooks

  ],
  [
    Valdivia, Chile

    Nov 2024 – Sep 2025

  ],
)

#regular-entry(
  [
    #strong[D2B - Inteligencia Digital], Analista frontend

    - Participé activamente en el desarrollo frontend de funcionalidades y componentes, vanilla y React, para aplicaciones web comerciales, con atención al UX (JavaScript, TypeScript, React 18, TanStack, SASS)

    - Hice el levantamiento de infraestructura y backend para aplicaciones web (GCP, Node.js, TypeScript, MySQL, PostgreSQL, Next.js 12, Express.js, Directus, Docker, Nginx)

    - Optimización de sitios web mediante herramientas especializadas de análisis y AB test como GA4 o ABTasty

    - Lideré reuniones con clientes durante más de un año. Planifiqué y ejecuté experimentos web para VTR Claro, Coopeuch, entre otros

    - Apoyé a la optimización SEO de sitios web comerciales de cara a los diferentes motores de búsqueda mediante el manejo de Search console, metadata, archivos sitemap y robots

  ],
  [
    Valdivia, Chile

    Jul 2022 – Sep 2024

  ],
)

#regular-entry(
  [
    #strong[Universidad Austral de Chile], Soporte técnico

    - Corregí vulnerabilidades de seguridad de la aplicación en el servidor (Docker, Nginx)

    - Creé respaldos de la base de datos periódicamente (PostgreSQL)

    - Creé la documentación de los procesos de seguridad y respaldo llevados a cabo durante este periodo

  ],
  [
    Valdivia, Chile

    May 2021 – Nov 2021

  ],
)

#regular-entry(
  [
    #strong[Puentes digitales], Ingeniero de software

    - Desarrollé componentes e interfaces para proyecto de trayectoria académica para facultad de profesores (Typescript, React 17, Next.js 10, GraphQL)

    - Actualicé modelos para admitir nuevos atributos. Creé nuevos endpoints para obtener y mostrar los nuevos datos asociados (TypeScript, PostgreSQL, GraphQL)

    - Trabajé con el equipo basado en metodologías agiles (Scrum, Kanban)

  ],
  [
    Valdivia, Chile

    Ene 2021 – Mar 2021

  ],
)

== Proyectos

#regular-entry(
  [
    #strong[#link("https://d2b.cl")[D2B - Inteligencia Digital]]

    #summary[Sitio web oficial de la empresa consultora D2B]

    - Aplicación fullstack lanzada a mediados del 2024, actualizando su sitio web previamente vanilla

    - Incluye frontend, dos CMS y una base de datos funcionando en conjunto

    - Aplicación open-source con #link("https://github.com/CRO-D2B/web-d2b-2024")[repositorio en GitHub]

  ],
  [
    Valdivia, Chile

    Feb 2024 – Jun 2024

  ],
)

== Habilidades

#strong[Desarrollo Web:] Alto conocimiento de desarrollo web full-stack. Amplio manejo de tecnologías frontend (React, Next.js, Astro) y backend (Node.js, Django, Express). Experiencia en TypeScript para desarrollo y despliegue de aplicaciones en servidores con Docker, Nginx y servicios cloud

#strong[Lenguajes de programación:] HTML, CSS, JavaScript, TypeScript, Python, HTML, CSS, SQL, GraphQL

#strong[Frameworks:] React, Next.js, Astro, Django, Express.js

#strong[Infrastructura y DevOps:] Docker, Nginx, GCP, Podman, Ansible

#strong[Idiomas:] Inglés (Intermedio-avanzado), Español (Nativo)
