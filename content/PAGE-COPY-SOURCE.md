# Single-Shot Prompt for Claude Code

Paste everything below this line into Claude Code as the opening message. It's fully self-contained — no external file references required.

---

# Project: paratodosbcs.mx — Community Conversation Landing Page

You're building a bilingual (Spanish-primary, English-secondary) landing page for **TODOS PARA TODOS A.C.**, a Mexican civil association convening a community conversation about whether the southern Pacific region of the Municipality of La Paz, BCS should explore forming its own municipality. This is a regional civic initiative, not a developer project, not a political campaign. Tone is exploratory, transparent, listening-first.

## Hard deadline

**Thursday 2026-05-28, 5:00 PM** is the first community town hall at **Plaza Todos Santos**. Landing page must be live (any URL works for now) by **Wednesday 2026-05-27 EOD** so QR codes on printed handouts work at the town hall.

## Stack

- **Framework:** Next.js 15 (App Router) + TypeScript
- **Styling:** Tailwind CSS v4
- **i18n:** next-intl (Spanish default at `/`, English at `/en`, persisted in localStorage)
- **Forms:** Tally.so embedded forms (3 forms — see below)
- **Analytics:** Plausible Analytics (privacy-friendly, NOT Google Analytics)
- **Hosting:** Vercel (free tier)
- **Repo:** GitHub
- **Domain:** `paratodosbcs.mx` (Barrett purchases separately; DNS pointed to Vercel once site is live)

## Context (so you don't drift)

### What this is
A bilingual landing page for a community-led exploration of forming a new municipality in southern BCS. Convened by **TODOS PARA TODOS A.C.** (Mexican civil association, founded by **Sarai Torres** and **Barrett Masso**, more committee members to be announced).

### Boundary
The "Pacific South of BCS" region includes Todos Santos, Pescadero, Cerritos, Las Tunas, Las Playitas, Elías Calles, and adjacent communities. Eastern boundary (whether to include Los Barriles / La Ribera on the East Cape) is TBD pending a technical cartographic study.

### Legal pathway (cite specifically — builds credibility)
Three legal gates derived from:
- **Constitución Política del Estado de BCS, Art. 64.XXXV** (Congress can create new municipalities by 2/3 vote)
- **Constitución Política del Estado de BCS, Art. 122** (8 requirements including 2/3 community plebiscite)
- **Ley de Participación Ciudadana para el Estado de BCS, Arts. 14, 16, 17, 19, 31** (citizen-initiated plebiscite mechanism)

The three gates:
1. **33% of voter roll signatures** (~3,500 in base scenario)
2. **2/3 YES vote** in citizen plebiscite
3. **2/3 of BCS State Congress deputies** approve

Plus baseline tests: minimum 5,000 inhabitants total, 3,000 in proposed cabecera.

### Execution partner
**Vita Insumos México, S de RL** — Mexican consultancy contracted by TODOS PARA TODOS A.C. to manage the technical and legal process. Quote totals ~$8.3M MXN over 20 months (Stage I: 600K, Stage II: 5M, Stage III: 2.7M base + 1-3M lobbying). Three-stage execution.

### Donations (interim, until SAT registration completes)
**Two paths, both placeholder until accounts are wired:**
- **Path A** — Donate to Vita Insumos directly → immediate factura issued
- **Path B** — Donate to TODOS PARA TODOS A.C. → factura pending SAT registration (~1-2 months)

For NOW, both buttons should open a Tally form ("Request payment instructions") that collects name/email/amount-intent, notifies Barrett, who responds with wire details manually. Once Vita provides a real payment URL or Stripe is wired, swap the button target.

### Voice & tone rules (CRITICAL — do not drift)
- **NEVER use "we will"** about an outcome we don't control. **Always conditional:** "if the community decides," "if we pursue this path"
- **NEVER use:** "breakaway," "secession," "split from," "leave"
- **USE:** "create," "form," "establish," "explore," "decide"
- **Avoid "they"** referring to La Paz. Use "current structure" or "today's framework"
- **Cite the law specifically** when invoking legal pathways (article numbers build credibility)
- **Spanish primary**, English secondary. Spanish always loads first.

### Visual style
- **Palette:** Pacific blues (`#1e3a5f` deep, `#4a90b8` mid) + warm sand (`#f5e6d3`) + sunset coral accent (`#e07a5f`) + warm white background (`#fafaf7`) + charcoal text (`#2a2a2a`)
- **NOT:** corporate NGO green, generic Bootstrap blue, stock-photo aesthetic
- **Typography:** Modern serif headings (Fraunces or Cardo from Google Fonts) + clean sans body (Inter or DM Sans)
- **Photography:** Hero is a sweeping coastal sunrise — Pacific coast, no people. Use beautiful Unsplash imagery as placeholder (search: "Baja California Sur coast", "Todos Santos sunrise", "Cerritos beach", "Pacific Mexico"). Photographer is providing real images this week.
- **Mobile-first responsive.** Heavy whitespace. NO carousels, popups, or exit-intent modals.

---

## Page structure — 10 sections, single-page scroll, anchored

All copy below. Use VERBATIM — do not paraphrase or "improve" the language.

### SECTION 1 — HERO

**Spanish (primary, larger, bolder):**
> # Nuestra Región, Nuestro Futuro
> ## Una conversación sobre cómo se toman las decisiones que afectan nuestras comunidades del Pacífico Sur.

**English (secondary, smaller, lighter):**
> # Our Region, Our Future
> ## A conversation about how decisions get made in the Pacific South of BCS.

**Pull quote:**
> *"Esto es una exploración, no una propuesta. Estamos aquí para escuchar y aprender juntos."*
> *"This is an exploration, not a proposal. We're here to listen and learn together."*

**Two side-by-side CTAs:**
- 🎧 **Únete a la conversación / Join the conversation** → anchors to #proxima-sesion
- 💛 **Apoya esta exploración / Support this exploration** → anchors to #aportar

**Background:** Sweeping coastal sunrise hero image, no people.

---

### SECTION 2 — THE 60-SECOND VERSION

**Header:**
- ES: ¿De qué se trata?
- EN: What is this?

**Spanish body:**
> La región sur del municipio de La Paz — desde Todos Santos hasta Pescadero, Cerritos, y comunidades del Pacífico Sur — está creciendo rápidamente. Con ese crecimiento vienen presiones reales sobre el agua, la energía, y la planeación del desarrollo.
>
> Las decisiones que afectan nuestra región se toman a una hora de distancia, en La Paz. Eso no es una crítica — es una observación estructural: ningún sistema puede priorizar a una comunidad de 11,000 personas cuando 300,000+ viven a una hora.
>
> La ley mexicana permite, bajo procesos específicos, que las comunidades creen sus propios municipios. Los Cabos lo hizo en 1992.
>
> **¿Es ese el camino correcto para nosotros?** No lo sabemos todavía. Por eso estamos abriendo esta conversación — con sesiones públicas, encuestas, estudios técnicos, y total transparencia.

**English body:**
> The southern region of La Paz municipality — from Todos Santos through Pescadero, Cerritos, and the Pacific South communities — is growing rapidly. With that growth come real pressures on water, power, and development planning.
>
> Decisions affecting our region are made an hour away, in La Paz. That's not a criticism — it's a structural observation: no system can prioritize an 11,000-person community when 300,000+ live an hour away.
>
> Mexican law allows, through specific legal processes, for communities to create their own municipalities. Los Cabos did this in 1992.
>
> **Is that the right path for us?** We don't know yet. That's why we're opening this conversation — with public sessions, surveys, technical studies, and full transparency.

---

### SECTION 3 — THE THREE LEGAL GATES

**Header:**
- ES: El marco legal
- EN: The legal framework

**Spanish:**
> Crear un nuevo municipio en BCS requiere pasar tres puertas legales — y son altas a propósito:
>
> **1️⃣ Petición ciudadana** — Al menos 33% de los ciudadanos registrados en el padrón electoral del territorio propuesto deben firmar la petición formal (aprox. 3,500 firmas en el escenario base).
>
> **2️⃣ Plebiscito** — Al menos 2/3 de los ciudadanos que voten en el plebiscito deben votar SÍ.
>
> **3️⃣ Congreso del Estado** — Al menos 2/3 de los Diputados del Congreso de BCS deben aprobar.
>
> *Fundamento: Constitución Política del Estado de BCS, Arts. 64.XXXV y 122; Ley de Participación Ciudadana, Arts. 14–31.*
>
> Si no podemos pasar estas tres puertas, no debemos crear un nuevo municipio. Estas existen para garantizar que solo se cree con apoyo comunitario genuino y demostrado.

**English:**
> Creating a new municipality in BCS requires passing three legal gates — and they're intentionally high:
>
> **1️⃣ Citizen petition** — At least 33% of registered voters in the proposed territory must sign the formal petition (~3,500 signatures in the base scenario).
>
> **2️⃣ Plebiscite** — At least 2/3 of citizens who vote must vote YES.
>
> **3️⃣ State Congress** — At least 2/3 of BCS State Deputies must approve.
>
> *Legal basis: BCS State Constitution Arts. 64.XXXV and 122; Citizen Participation Law Arts. 14–31.*
>
> If we can't pass these three gates, we shouldn't create a new municipality. These exist to ensure no new municipality is created without genuine, demonstrated community support.

---

### SECTION 4 — THE PLAN IN STAGES

**Header:**
- ES: El proceso por etapas
- EN: The process, in stages

**Three stage cards (3 across desktop, stacked mobile):**

**🌱 ETAPA I — Fundación / Foundation**
- *2 meses / 2 months — 600,000 MXN*
- Formación del Comité Promotor / Promoter Committee formation
- Encuesta de opinión pública (600 cuestionarios) / Public opinion survey
- Estudio cartográfico de delimitación / Boundary cartographic study
- Sesiones comunitarias en Todos Santos, Pescadero, Cerritos / Community sessions

**🗳️ ETAPA II — Plebiscito / Plebiscite**
- *6 meses / 6 months — 5,000,000 MXN*
- Campaña informativa pública / Public information campaign
- Recolección de firmas (3,500+) / Signature collection
- Solicitud formal ante autoridad electoral / Formal filing with electoral authority
- Plebiscito comunitario / Community plebiscite

**🏛️ ETAPA III — Aprobación legislativa / Legislative approval**
- *12 meses / 12 months — 2.7M base + 1–3M cabildeo / lobbying*
- Cabildeo ante el Congreso del Estado / State Congress lobbying
- Programa de transición municipal / Municipal transition program
- Plan de Desarrollo Municipal / Municipal Development Plan

**Three commitments block (after stage cards):**

**Spanish:**
> 🔒 **Financiamiento por etapas.** No levantamos fondos para la Etapa II hasta que los entregables de la Etapa I estén publicados públicamente. Si la comunidad decide no continuar después de la Etapa I, paramos.
>
> 🔒 **Libros abiertos.** Cada peso recaudado y cada peso gastado se publica trimestralmente. Auditoría independiente al final de cada etapa.
>
> 🔒 **Veto comunitario.** En cualquier punto del proceso, si el sentir comunitario cambia, el Comité Promotor pausará y consultará públicamente antes de proceder.

**English:**
> 🔒 **Stage-gated funding.** We don't raise Stage II until Stage I deliverables are publicly published. If the community decides not to continue after Stage I, we stop.
>
> 🔒 **Open books.** Every peso raised and every peso spent is published quarterly. Independent audit at the end of each stage.
>
> 🔒 **Community veto.** At any point in the process, if community sentiment shifts, the Founding Committee will pause and consult publicly before proceeding.

---

### SECTION 5 — THREE WAYS TO BE PART OF THIS

**Header:**
- ES: Tres maneras de participar
- EN: Three ways to be part of this

**Three equal cards:**

**🎧 ESCUCHAR Y COMPARTIR / LISTEN & SHARE**

**ES:** Atiende una sesión (presencial u online). Lee los materiales que publicamos. Comparte con tus vecinos. Sin compromiso. Este es el paso más importante.

**EN:** Attend a session (in person or online). Read the materials we publish. Share with neighbors. No commitment required. This is the most important step.

**CTA:** "Próxima sesión: Jueves 28 de Mayo, 5pm — Plaza Todos Santos" → anchors to #proxima-sesion

---

**🛠️ VOLUNTARIO / VOLUNTEER**

**ES:** Tu tiempo vale tanto como el dinero. Maneras de apoyar sin donar: anfitrión de sesión, recolector de firmas (Etapa II), traductor (español ↔ inglés), diseñador / videógrafo / redes sociales, contador / revisión legal, comité asesor comunitario, outreach a sectores específicos.

**EN:** Your time is worth as much as money. Ways to support without donating: session host, signature gatherer (Stage II), translator (Spanish ↔ English), designer / videographer / social media, accountant / legal review, community advisory committee, sector outreach.

**CTA:** "Inscríbete / Sign up" → opens Volunteer Tally form (Form 2 below)

---

**💛 APORTAR / CONTRIBUTE**

**ES:** Cualquier monto cuenta — de 50 pesos a 500,000+ pesos. Las donaciones financian solamente el proceso por etapas: primero la Etapa I, después la Etapa II solo si la comunidad decide continuar.
>
> **Mientras completamos el registro fiscal SAT de TODOS PARA TODOS A.C., ofrecemos dos caminos:**
>
> **Opción A — Donar al despacho legal (Vita Insumos)** — Recibo de factura inmediato.
>
> **Opción B — Donar a TODOS PARA TODOS A.C.** — Status de factura en proceso, esperando registro SAT (próximos 1–2 meses).

**EN:** Any amount counts — from 50 pesos to 500,000+. Donations fund only the staged process: Stage I first, then Stage II only if the community decides to continue.
>
> **While we complete TODOS PARA TODOS A.C.'s SAT tax registration, we offer two paths:**
>
> **Option A — Donate to the legal firm (Vita Insumos)** — Immediate factura receipt.
>
> **Option B — Donate to TODOS PARA TODOS A.C.** — Factura status in process pending SAT registration (next 1–2 months).

**Tier suggestions:**

| ES | EN | MXN |
|---|---|---|
| Vecino del Pueblo | Pueblo Supporter | 50 |
| Vecino Activo | Active Neighbor | 500 |
| Constructor Comunitario | Community Builder | 5,000 |
| Patrón Etapa I | Stage I Patron | 50,000 |
| Fundador | Founding Underwriter | 500,000+ |

Plus custom amount input + "anonymous?" checkbox.

**Two buttons:**
- "Opción A: Vita Insumos (con factura) / Option A: Vita Insumos (with factura)" → opens Donation Intent Tally form (Form 3) with hidden field `path=A`
- "Opción B: TODOS PARA TODOS A.C. / Option B: TODOS PARA TODOS A.C." → opens Donation Intent Tally form with hidden field `path=B`

---

### SECTION 6 — WHO'S BEHIND THIS

**Header:**
- ES: Esta conversación está convocada por tus vecinos
- EN: This conversation is convened by your neighbors

**Body (Spanish):**
> Esta conversación es convocada por **TODOS PARA TODOS A.C.** — una asociación civil mexicana dedicada a mejorar la calidad de vida en nuestras comunidades.
>
> **Comité Promotor Inicial:**
> - **Sarai Torres** — vecina y co-fundadora
> - **Barrett Masso** — vecino y co-fundador
> - *Más miembros del comité por anunciar conforme se construye el grupo.*

**Body (English):**
> This conversation is convened by **TODOS PARA TODOS A.C.** — a Mexican civil association dedicated to improving quality of life in our communities.
>
> **Initial Founding Committee:**
> - **Sarai Torres** — resident and co-founder
> - **Barrett Masso** — resident and co-founder
> - *More committee members to be announced as the group is built.*

**Photo placeholders:** Use circular avatars with initials (SC, BM) until photographer delivers headshots this week. Then swap.

**Origin story block (verbatim, do NOT change a single word):**

**Spanish:**
> "Hace dos años nos mudamos a Todos Santos desde Los Cabos. Nos enamoramos de este lugar — su gente, sus ritmos, su terquedad silenciosa por seguir siendo lo que es a pesar de que todo a su alrededor cambia.
>
> Mientras crecía ese cariño, notamos algo. Esta comunidad tiene vecinos increíbles — gente que se presenta por los demás, que se esfuerza, que cuida. Pero la estructura municipal no está acompañando esa energía. Las calles no se arreglan. La basura se acumula. El agua y la luz son más frágiles cada año. No es porque el dinero no exista — sí existe. Es porque las prioridades se deciden a una hora de distancia, en La Paz, por personas que no viven aquí.
>
> No le estamos pidiendo a nadie que vote sí o no. Estamos preguntando: ¿es momento de tener una conversación honesta sobre si esta región debería tomar más de sus propias decisiones? El pueblo que amamos está creciendo rápido. Si seguimos creciendo sin los recursos para sostener ese crecimiento, perdemos lo que hace que este lugar valga la pena."
>
> — Sarai Torres y Barrett Masso

**English:**
> "Two years ago we moved to Todos Santos from Los Cabos. We fell in love with this place — its people, its rhythms, its quiet stubbornness about staying itself even as everything around it changes.
>
> As that love grew, we noticed something. This community has incredible neighbors — people who show up for each other, who try, who care. But the municipal structure isn't matching that energy. The roads aren't fixed. The trash piles. Water and power get more fragile each year. It's not because the money doesn't exist — it does. It's because the priorities are set an hour away in La Paz, by people who don't live here.
>
> We're not asking anyone to vote yes or no. We're asking: is it time to have an honest conversation about whether this region should be making more of its own decisions? The town we love is growing fast. If we keep growing without the means to support that growth, we lose what makes this place worth loving."
>
> — Sarai Torres & Barrett Masso

---

### SECTION 7 — NEXT SESSION (anchor: #proxima-sesion)

**Header:**
- ES: Únete a la conversación
- EN: Join the conversation

**Large featured event block:**

📍 **Primera sesión comunitaria / First community session**
🗓️ **Jueves 28 de Mayo, 2026 / Thursday May 28, 2026**
🕔 **5:00 PM**
📍 **Plaza Todos Santos**
🗣️ **Bilingüe / Bilingual** (español primario, traducción al inglés / Spanish primary, English translation available)

**Signup form (embed Tally Form 1 below):**
- Nombre / Name (required)
- Email (required)
- WhatsApp (optional)
- Comunidad / Community (dropdown: Todos Santos / Pescadero / Cerritos / Las Tunas / Las Playitas / Elías Calles / Otro)
- Idioma preferido / Preferred language (ES / EN / both)
- Opt-in checkbox for future updates

**Below form:**
> Si no puedes asistir presencialmente, también ofrecemos sesión online (Zoom), grupo de WhatsApp informativo, y resúmenes por email después de cada sesión.
>
> If you can't attend in person, we also offer online sessions (Zoom), a WhatsApp info group, and email recaps after each session.

---

### SECTION 8 — FAQ

**Header:**
- ES: Preguntas frecuentes
- EN: Frequently asked questions

**Accordion-style, 9 Q&As, each answer in BOTH languages:**

**1. ¿Esto significa que mis impuestos van a subir? / Will my taxes go up?**

*ES:* No para impuestos federales o estatales — esos no cambian. Los impuestos municipales (predial, etc.) los decidiría un nuevo cabildo local, que podría establecerlos iguales, más bajos, o más altos según las prioridades acordadas por la comunidad y sus representantes electos.

*EN:* Not for federal or state taxes — those don't change. Municipal taxes (property tax, etc.) would be decided by a new local cabildo, which could set them the same, lower, or higher based on priorities agreed by the community and its elected representatives.

**2. ¿Voy a poder seguir siendo dueño y vender mi propiedad? / Will I still be able to own and sell my property?**

*ES:* Sí. Los derechos de propiedad no cambian. Esta es una iniciativa de gobernanza municipal, no de cambio de derechos de propiedad.

*EN:* Yes. Property rights don't change. This is a municipal governance initiative, not a change in property rights.

**3. ¿Esto es un intento de "land grab" de extranjeros? / Is this an outsider land-grab?**

*ES:* No. Es una iniciativa convocada por residentes locales bajo TODOS PARA TODOS A.C. con libros abiertos. El proceso requiere por ley la aprobación de 2/3 de los residentes que voten en el plebiscito — eso lo decide la comunidad, no individuos ni intereses particulares.

*EN:* No. It's an initiative convened by local residents under TODOS PARA TODOS A.C. with open books. The process legally requires 2/3 of voting residents' approval in a plebiscite — that's decided by the community, not by individuals or particular interests.

**4. ¿Qué pasa con mi FM3 o residencia? / What about my FM3 or residency?**

*ES:* Nada. Tu status migratorio federal no cambia con un cambio municipal.

*EN:* Nothing. Your federal immigration status doesn't change with a municipal change.

**5. ¿Qué pasa si esto fracasa a medio camino? / What happens if this fails midway?**

*ES:* El proceso es por etapas. Si la comunidad decide no continuar después de la Etapa I, paramos — y los fondos no usados se quedan en custodia de la asociación civil para usos relacionados con la mejora comunitaria, con transparencia total.

*EN:* The process is staged. If the community decides not to continue after Stage I, we stop — and unused funds remain in the civil association's custody for related community-improvement uses, with full transparency.

**6. ¿Quién decide los límites del nuevo municipio? / Who decides the boundaries of the new municipality?**

*ES:* La comunidad, con base en un estudio técnico cartográfico (parte de la Etapa I) que analiza varios escenarios: por ejemplo, solo la costa Pacífico, o costa Pacífico más Cabo del Este (Los Barriles, La Ribera). El resultado se presenta a la comunidad para discusión antes de cualquier decisión.

*EN:* The community, based on a technical cartographic study (part of Stage I) that analyzes multiple scenarios: e.g., Pacific coast only, or Pacific coast plus East Cape (Los Barriles, La Ribera). The result is presented to the community for discussion before any decision.

**7. ¿Quién es Vita Insumos? / Who is Vita Insumos?**

*ES:* Vita Insumos México es una consultoría mexicana contratada por TODOS PARA TODOS A.C. para gestionar el proceso técnico y legal. No decide el resultado — solo provee los servicios contratados. Su propuesta detallada está disponible públicamente.

*EN:* Vita Insumos México is a Mexican consultancy contracted by TODOS PARA TODOS A.C. to manage the technical and legal process. It doesn't decide the outcome — it only provides contracted services. Its detailed proposal is publicly available.

**8. ¿Cómo sé que los fondos se usan correctamente? / How do I know funds are used correctly?**

*ES:* Reportes financieros públicos trimestrales. Auditoría independiente al final de cada etapa. Libro mayor de gastos publicado en línea. Y el compromiso de stage-gating: no levantamos fondos para la siguiente etapa hasta que los entregables de la actual sean públicos.

*EN:* Public quarterly financial reports. Independent audit at the end of each stage. Public expense ledger published online. Plus the stage-gating commitment: we don't raise the next stage's funds until current stage deliverables are public.

**9. ¿Cuándo puedo ver el deck completo o asistir a una sesión? / When can I see the full deck or attend a session?**

*ES:* El primer foro comunitario es jueves 28 de mayo, 5pm en Plaza Todos Santos. Regístrate arriba para recibir actualizaciones. El deck completo también estará disponible para descarga pronto.

*EN:* The first community forum is Thursday May 28, 5pm at Plaza Todos Santos. Register above to receive updates. The full deck will also be available for download soon.

---

### SECTION 9 — DOCUMENTS

**Header:**
- ES: Documentos
- EN: Documents

**Downloadable resources (placeholder links until PDFs ready):**

- 📄 Deck completo (PDF español) / Full deck (PDF Spanish)
- 📄 Deck completo (PDF English) / Full deck (PDF English)
- 📄 Propuesta Vita Insumos / Vita Insumos proposal (PDF, 6 páginas)
- 📄 TODOS PARA TODOS A.C. — Estatutos / Bylaws (coming soon)
- 📊 Reporte de Etapa I / Stage I report (TBD — publishable when Stage I deliverables complete)
- 📊 Reporte financiero trimestral / Quarterly financial report (TBD — first publishable in 3 months)

For now, render as a card grid with disabled state for documents not yet available; enable as they're added.

---

### SECTION 10 — FOOTER

**Contact (placeholder values — ask Barrett for real ones):**
- 📧 hola@paratodosbcs.mx (or current alias — ask Barrett)
- 📱 WhatsApp: +52 [TBD]
- 🌐 paratodosbcs.mx
- 📍 Pacífico Sur de BCS, México

**Legal:**
- TODOS PARA TODOS A.C. — Asociación Civil registrada en México
- Política de privacidad / Privacy policy (link — simple page, generic AC privacy notice OK for now)
- Aviso de privacidad SAT (cuando aplique) / SAT privacy notice (when applicable)

**Last updated:** {dynamic date}

---

## Three Tally forms to create

All three should deliver submissions to Barrett's notification email (ask him for this).

### Form 1: Session Signup (Section 7)
- Name (required, text)
- Email (required, email)
- WhatsApp (optional, text)
- Comunidad/Community (dropdown: Todos Santos, Pescadero, Cerritos, Las Tunas, Las Playitas, Elías Calles, Otro+free text)
- Idioma/Language (radio: Español / English / Both)
- Opt-in for future updates (checkbox)

### Form 2: Volunteer
- Name (required)
- Email (required)
- WhatsApp (optional)
- Ways to help (multi-select checkboxes): Anfitrión de sesión, Recolector de firmas, Traductor, Diseñador/videografo/redes, Contabilidad/legal, Comité asesor, Outreach por sector (free text), Otro (free text)
- Comunidad + Idioma (same as Form 1)

### Form 3: Donation Intent
- Name (required)
- Email (required)
- WhatsApp (optional)
- Path (hidden field, A or B, set by which button was clicked)
- Intended amount (free text or dropdown: 50 / 500 / 5,000 / 50,000 / 500,000+ / Custom)
- Anonymous? (checkbox)
- Recurring monthly? (checkbox)

---

## Deployment

1. Initialize Next.js 15 + TypeScript + Tailwind + App Router
2. Add `next-intl` with locales `es` (default, root) and `en` (`/en`)
3. Build the 10 sections as single-page anchored sections
4. Embed three Tally forms
5. Add Plausible script
6. Push to GitHub (suggested repo name: `paratodos-bcs` or `paratodosbcs-mx`)
7. Deploy to Vercel from GitHub (auto-deploys on push)
8. Initial URL will be `paratodosbcs-xxxxx.vercel.app` — hand that URL to Barrett
9. Once Barrett buys `paratodosbcs.mx`, add custom domain in Vercel + point DNS A record to Vercel's IP (Vercel UI walks through this)

---

## Open questions to ask Barrett before deploying

1. **Notification email** for form submissions (signup, volunteer, donation intent)
2. **Vita Insumos payment URL or bank details** — if available, wire directly; if not, use the Tally "Request payment instructions" pattern
3. **Photographer's expected delivery date** — placeholder images vs real images by Thursday?
4. **GitHub repo name** — `paratodos-bcs` or another?
5. **Vercel project name** — defaults to repo name, can be customized
6. **Plausible analytics** — set up account ($9/mo or free 30-day trial)?
7. **Tally forms** — Barrett creates account or you create them via Tally API?
8. **WhatsApp number** for footer (real or placeholder for now?)
9. **Email address** for footer (real or placeholder?)

---

## What's NOT in scope for this build

- The Vita Insumos peninsula-wide map (Stage I cartographic study — weeks out)
- Final Founding Committee headshots (photographer delivers this week)
- Press release (separate Liv deliverable, post-town-hall)
- Email cultivation sequence (separate Liv deliverable)
- Stripe live payment integration (waits for SAT registration completion)

---

## Critical voice/tone reminders — enforce throughout

- Never "we will [become a municipality / win the plebiscite / etc.]" — always conditional
- Never "breakaway / secession / split / leave"
- Always "explore / consider / form / establish / create"
- Spanish first, English second, always
- Cite legal articles explicitly when invoking law
- Acknowledge Scenario A (stay in La Paz) as legitimate — never frame as inferior
- Acknowledge what's NOT decided (boundary, outcome) honestly
- No predictions of plebiscite result
- No promises of new-municipality services

---

## Done when:

- [ ] Site renders cleanly on mobile + desktop at any Vercel preview URL
- [ ] Spanish loads at `/` by default
- [ ] English available at `/en` with toggle in header
- [ ] All 10 sections present with verbatim copy above
- [ ] Three Tally forms embedded and tested with a sample submission
- [ ] Hero image present (Unsplash placeholder OK)
- [ ] No broken links, no Lorem Ipsum, no dev placeholders
- [ ] Plausible analytics firing
- [ ] Barrett confirms the URL works on his phone in Spanish + English
- [ ] QR code generated from final URL for printed handouts

Delivery target: **Wednesday 2026-05-27 EOD** for Thursday 5pm town hall.