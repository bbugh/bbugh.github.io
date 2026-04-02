// Brian Bugh - Technical Resume
#set document(title: "Brian Bugh - Technical Resume", author: "Brian Bugh")
#set page(margin: (top: 0.5in, bottom: 0.5in, x: 0.55in), paper: "us-letter")
#set text(font: "Inter", size: 9pt, fill: rgb("#2d2d2d"))
// #set par(justify: true, leading: 0.7em, spacing: 1.4em)
#set par(justify: true, leading: 0.6em, spacing: 1.1em)
#set list(indent: 0pt, body-indent: 5pt, spacing: 10pt)

// --- Styles ---
#let accent = rgb("#b45309")
#let muted = rgb("#666666")
#let light = rgb("#999999")

#let section(title) = block(above: 26pt, below: 10pt)[
  #stack(spacing: 4pt,
    text(size: 11pt, weight: "bold", fill: accent, tracking: 0.5pt)[#upper(title)],
    line(length: 100%, stroke: 0.75pt + accent),
  )
]

#let entry(title, body) = block(below: 16pt)[
  #stack(spacing: 6pt,
    text(weight: "bold", size: 9.5pt)[#title],
    body,
  )
]

#let yrs(n) = text(fill: light, size: 8pt)[(#n yrs)]

#let skill-row(category, items) = block(below: 10pt)[
  #grid(
    columns: (85pt, 1fr),
    gutter: 6pt,
    text(weight: "bold", size: 8.5pt)[#category],
    text(size: 8.5pt)[#items],
  )
]

#let domain(title, years, description) = block(below: 16pt)[
  #stack(spacing: 6pt,
    [#text(weight: "bold", size: 9.5pt)[#title] #h(1fr) #text(fill: light, size: 8.5pt)[#years yrs]],
    text(size: 9pt)[#description],
  )
]

// === HEADER ===
#align(center)[
  #block(below: 10pt, text(size: 24pt, weight: "bold", tracking: 1pt)[BRIAN BUGH])
  #block(below: 6pt, text(size: 10.5pt)[Generalist Systems Engineer & Technical Leadership])
  #block(below: 0pt, text(size: 8.5pt, fill: light)[
    #link("https://brianbugh.me")[brianbugh.me]
    #h(10pt) | #h(10pt)
    #link("https://linkedin.com/in/brianbugh")[linkedin.com/in/brianbugh]
  ])
]

// === SUMMARY ===
#section("Summary")

Full-stack and systems engineer with 30 years of experience and 15 years of leadership across web development, hardware, data architecture, game engines, DevOps, and product design. Proven technical leader as CTO, cofounder, and early-stage leader of multiple startups, creating teams that deliver with a healthy work-life balance. Business generalist and technology specialist who adapts quickly to new domains.

// === SKILLS ===
#section("Skills")

#skill-row("Languages")[JavaScript #yrs[29], SQL #yrs[26], Bash #yrs[20], Ruby #yrs[15], TypeScript #yrs[9], C/C++ #yrs[8], PHP #yrs[5], Java #yrs[2], Python #yrs[1], Elixir #yrs[1], Rust #yrs[\<1]]
#skill-row("Frontend")[HTML/CSS #yrs[30], Vue #yrs[8], Tailwind #yrs[5], React #yrs[2], Svelte #yrs[\<1]]
#skill-row("Backend")[Ruby on Rails #yrs[15], Node.js #yrs[6], ASP.NET #yrs[2], Phoenix #yrs[1], Django #yrs[1]]
#skill-row("Data")[SQL/Databases #yrs[26], BigQuery, Snowflake, ETL pipelines, data modeling]
#skill-row("Infrastructure")[Git #yrs[15], Linux #yrs[8], Docker #yrs[5], GCP #yrs[4], AWS #yrs[2], CI/CD]
#skill-row("Design")[Photoshop #yrs[31], Figma #yrs[3], UX research, product design, design systems]
#skill-row("Game Dev")[C/C++ engine architecture #yrs[8], Unity, performance optimization, memory management]

// === DOMAINS ===
#section("Domains of Expertise")

#grid(
  columns: (1fr, 1fr),
  gutter: 26pt,
  [
    #domain("Full-Stack Web Development", 30,
      "Building everything from early e-commerce platforms to modern SSR full stack apps. Frontend to backend, data to display, I can build it, fix it, and lead the team doing it.")
    #domain("Data Engineering & Architecture", 26,
      "Designing databases, data pipelines, and analytics systems, for everyone from startups to the UN to enterprise warehouses with decades of history.")
    #domain("Product Design & UX", 20,
      "Deeply understanding what users love, building products people want to use by combining technical implementation with human-centered design.")
  ],
  [
    #domain("Technical Leadership", 15,
      "CTO and technical strategy, building and mentoring engineering teams, and translating between business and execution.")
    #domain("Game Engine Development", 6,
      "AAA game systems engineer; near-complete Xbox 360 rewrite of Quake 3, Lua-based quest system in Mercenaries 2, a production ActionScript 2 game engine, and multiple Rock Band titles across platforms.")
    #domain("DevOps & Infrastructure", 20,
      "Deploying and maintaining applications, building and managing Linux, docker, and cloud infrastructure, CI/CD, automation, and monitoring.")
  ],
)

// === TECHNICAL HIGHLIGHTS ===
#section("Career Highlights")

#grid(
  columns: (1fr, 1fr),
  gutter: 26pt,
  [
    #entry("Custom Linux Audio / Electron Kiosk System")[
      Created a custom Linux-based OS that booted directly into a secure Electron kiosk app, on a shoestring budget. Surround sound (surprisingly difficult on Linux), automatic cloud updates, remote device management, and an advanced audio engine handling multiple overlapping tracks with smooth crossfading and pausing.
    ]
    #entry("Rewrite of an Internal Banking Administration System")[
      Completely rewrote a large bank's buggy, insecure internal admin system from scratch, in two weeks (original contractor team: 6 months, estimated at 1 month). Dramatically improved performance, eliminated critical security vulnerabilities, more intuitive UI, proper ASP.net architecture.
    ]
  ],
  [
    #entry("Enterprise Data Architecture")[
      Designed and implemented a data lake with ETL processes combining decades of historical data for a national tax services company, working directly with the president and C-suite to expand into new technology-driven business pillars. Built ad-hoc reports to support high-stakes strategic decisions and helped craft job descriptions and hire a full-time data engineer.
    ]
    #entry("Custom Xbox 360 File Packaging System")[
      Replaced Microsoft's slow, insecure XBOX file packaging system with a custom-built secure alternative. Load times dropped from \~45 seconds to \<8 seconds through intelligent file data distribution and hand-tuned custom compression.
    ]
  ],
)

#section("Career Highlights (continued)")

#grid(
  columns: (1fr, 1fr),
  gutter: 26pt,
  [
    #entry("Predictive Asset Loading and Rendering Pipeline")[
      Built an advanced asset loading and rendering system for a Facebook Flash game that pushed high-resolution sprites and animation beyond what was previously thought possible, along with a pre-compiler that let artists maximize visual quality while the system handled performance.
    ]
  ],
  [
    #entry("Spec-Complete, Enhanced AS2 Interpreter in C++")[
      Wrote a complete, spec-compliant ActionScript 2 interpreter in C++ for a AAA game engine that had a strict no-third-party-libraries policy, enabling Flash as a UI design environment. Thread/process-safe async updates, fully automated test suite self-written in ActionScript, and an extensive component library that enabled rapid UI creation across titles.
    ]
  ],
)

// === STRENGTHS ===
#section("Strengths")

#grid(
  columns: (1fr, 1fr),
  gutter: 26pt,
  [
    - Predicting failure outcomes and spotting "gap problems", then writing code or guiding the team to avoid them.
    - Deep experience in code/process optimization, robustness, and security.
    - Data architecture, file systems, resource allocation, optimization, loading, and caching.
    - Laying foundational architecture that teams can confidently build on.
    - Creating frameworks and tools that empower teams to do better work and make their lives easier.
    - Product design with deep intuition for human interaction, turning that into software people genuinely love.
  ],
  [
    - Investing in the growth of team members and helping good people become exceptional.
    - Leading teams that produce high-quality output consistently over long periods without burnout.
    - Strong work ethic, getting things done because they need doing.
    - Deep, sustained focus on difficult tasks for long periods without losing energy or attention.
    - Doing things right the first time so no one ever has to do them again.
    - Seeing where systems will fail before they do, then making sure they don't.
  ],
)

// === WEAKNESSES ===
#section("Weaknesses")

#grid(
  columns: (1fr, 1fr),
  gutter: 26pt,
  [
    - Technical strategy and team leadership are where I shine; tracking every daily detail of a large project's moving pieces is not. I work exceptionally well when paired with a strong project manager who handles the logistics while I focus on architecture, strategy, and leading the team.
    - The earlier you bring me in on a project, the more value you get. I can keep things running, but I'm at my best when the foundation is still being figured out.
  ],
  [
    - I see connections between problems that other people treat as separate, and I have to stop myself from chasing all of them.
    - I'll never write a custom game physics solver from scratch. Thankfully, the last decade of engine development means I'll probably never need to.
  ],
)
