# Go High Level Form Spec — 3 forms for paratodosbcs.mx

Build these 3 forms in your GHL sub-account, then paste the embed snippets into the Next.js repo (or hand to Claude Code). Each form below is field-by-field, with tags + auto-reply templates in both languages.

Recommended GHL setup:
- **Sub-account/location:** `TODOS PARA TODOS A.C.` (the legal entity name; create if not existing). Public-facing brand for emails/SMS is "PARA TODOS".
- **Pipeline:** `Community Conversation` with stages: `New Lead → Confirmed Attendee → Volunteer → Donor Intent → Donated → Lapsed`
- **Smart Lists:** auto-segment by `Idioma` tag (ES vs EN) and by `Comunidad` tag (Todos Santos / Pescadero / Cerritos / etc.)

---

## Form 1 — Session Signup

**Form name:** `Town Hall Signup — Pacífico Sur BCS`
**Anchor on landing page:** `#proxima-sesion`
**Purpose:** Capture intent to attend the June 4 (Spanish) / June 5 (English) community sessions (and future ones).

### Fields

| Order | Label (ES / EN) | Type | Required | Notes |
|---|---|---|---|---|
| 1 | Nombre / Name | Single line text | Yes | Map to GHL standard `firstName` (split first word) and `lastName` if 2+ words |
| 2 | Email | Email | Yes | Map to `email` |
| 3 | WhatsApp | Phone | No | Map to `phone`. Default country code +52 |
| 4 | Comunidad / Community | Dropdown | Yes | Options: `Todos Santos`, `Pescadero`, `Cerritos`, `Las Tunas`, `Las Playitas`, `Elías Calles`, `Otro / Other` |
| 5 | Si seleccionaste "Otro", especifica / If "Other", specify | Single line text | No | Conditional show on Q4 = "Otro" |
| 6 | Idioma preferido / Preferred language | Radio | Yes | Options: `Español`, `English`, `Both / Ambos` |
| 7 | ¿Quieres recibir actualizaciones futuras? / Receive future updates? | Checkbox | No | Default: checked |
| 8 | source | Hidden field | — | Value: `sessions-2026-06-04-05` |

### Tags applied on submit
- `town-hall-signup`
- `sessions-2026-06-04-05`
- `comunidad-{value}` (e.g., `comunidad-todos-santos`)
- `idioma-{value}` (e.g., `idioma-es`, `idioma-en`, `idioma-both`)

### Workflow on submit
1. Add contact to pipeline `Community Conversation`, stage `Confirmed Attendee`.
2. Send auto-reply email (template below) — language picked by Q6.
3. If WhatsApp provided: send WhatsApp confirmation message (template below).
4. Notification email to `hola@paratodosbcs.mx` (cc `barrettmasso@me.com`) with all fields.

### Auto-reply email — Spanish

**Subject:** Te esperamos en junio — PARA TODOS

> Hola {{first_name}},
>
> Gracias por registrarte para la primera sesión comunitaria del Pacífico Sur de BCS.
>
> **📍 Sesión en español:** Jueves 4 de junio, 2026 — 5:00 PM
> **📍 Sesión en inglés:** Viernes 5 de junio, 2026 — 5:00 PM
> **📍 Dónde:** Teatro-Cine General Manuel Márquez (ambas sesiones)
>
> No necesitas traer nada. Llega un poco antes si puedes — vamos a tener cafecito y agua para todos.
>
> Esta es una **conversación**, no una reunión informativa. Vamos a compartir lo que sabemos, lo que no sabemos, y queremos escuchar lo que tú piensas. Si tienes preguntas, dudas, o desacuerdos — ese es el espacio para traerlos.
>
> Si no puedes asistir presencialmente, te avisamos cuando publiquemos el resumen anonimizado y la opción de sesión online.
>
> Nos vemos pronto,
> **Sarai Torres y Barrett Masso**
> Comité Promotor Inicial — PARA TODOS
>
> 🌐 paratodosbcs.mx
> 📧 hola@paratodosbcs.mx
>
> *Si necesitas dejar de recibir actualizaciones, responde con "BAJA" a este correo.*

### Auto-reply email — English

**Subject:** See you in June — PARA TODOS

> Hi {{first_name}},
>
> Thanks for signing up for the first community session for the Pacific South of BCS.
>
> **📍 Spanish session:** Thursday June 4, 2026 — 5:00 PM
> **📍 English session:** Friday June 5, 2026 — 5:00 PM
> **📍 Where:** Teatro-Cine General Manuel Márquez (both sessions)
>
> Nothing to bring. Come a little early if you can — we'll have coffee and water for everyone.
>
> This is a **conversation**, not an informational meeting. We're going to share what we know, what we don't know, and we want to hear what you think. If you have questions, doubts, or disagreements — that's the space to bring them.
>
> If you can't make it in person, we'll let you know when the anonymized recap and online-session option are published.
>
> See you soon,
> **Sarai Torres & Barrett Masso**
> Initial Founding Committee — PARA TODOS
>
> 🌐 paratodosbcs.mx
> 📧 hola@paratodosbcs.mx
>
> *To stop receiving updates, reply "UNSUBSCRIBE" to this email.*

### Auto-reply WhatsApp — Spanish (if WhatsApp provided)

> ¡Hola {{first_name}}! 🌅 Gracias por registrarte. Sesión en español: jueves 4 de junio, 5pm · Teatro-Cine General Manuel Márquez. (También hay sesión en inglés el viernes 5 de junio.) Trae tus preguntas y desacuerdos — son lo más valioso de la noche. Más info: paratodosbcs.mx 💛

### Auto-reply WhatsApp — English

> Hi {{first_name}}! 🌅 Thanks for signing up. English session: Friday June 5, 5pm · Teatro-Cine General Manuel Márquez. (A Spanish session runs Thursday June 4.) Bring your questions and disagreements — they're the most valuable part of the night. More: paratodosbcs.mx 💛

---

## Form 2 — Volunteer / Get Involved

**Form name:** `Volunteer — Pacífico Sur BCS`
**Anchor on landing page:** Card inside `#participar`
**Purpose:** Capture non-monetary support — hosts, signature gatherers, translators, advisors, sector outreach.

### Fields

| Order | Label (ES / EN) | Type | Required | Notes |
|---|---|---|---|---|
| 1 | Nombre / Name | Single line text | Yes | |
| 2 | Email | Email | Yes | |
| 3 | WhatsApp | Phone | No | |
| 4 | Comunidad / Community | Dropdown | Yes | (Same options as Form 1) |
| 5 | Idioma preferido / Preferred language | Radio | Yes | ES / EN / Both |
| 6 | ¿En qué te gustaría apoyar? / How would you like to help? | Multi-select checkboxes | Yes (at least 1) | See "Volunteer options" below |
| 7 | Outreach por sector — describe el sector / Sector outreach — describe the sector | Single line text | No | Conditional: shown if Q6 includes "Outreach por sector" |
| 8 | Otro — describe / Other — describe | Single line text | No | Conditional: shown if Q6 includes "Otro" |
| 9 | Cuéntanos un poco sobre ti / Tell us a bit about yourself | Long text | No | Optional. Helps Founding Committee triage. |
| 10 | source | Hidden field | — | Value: `volunteer-landing` |

### Volunteer options (Q6)
- Anfitrión de sesión / Session host
- Recolector de firmas (Etapa II) / Signature gatherer (Stage II)
- Traductor (ES ↔ EN) / Translator
- Diseñador / videógrafo / redes sociales / Designer / videographer / social media
- Contabilidad / revisión legal / Accounting / legal review
- Comité asesor comunitario / Community advisory committee
- Outreach por sector / Sector outreach
- Otro / Other

### Tags applied on submit
- `volunteer`
- `comunidad-{value}`
- `idioma-{value}`
- For each ticked help-type: `vol-host`, `vol-signature`, `vol-translator`, `vol-design`, `vol-finance-legal`, `vol-advisor`, `vol-outreach`, `vol-other`

### Workflow on submit
1. Add to pipeline `Community Conversation`, stage `Volunteer`.
2. Auto-reply email (template below).
3. Notification email to `hola@paratodosbcs.mx` + `barrettmasso@me.com`.
4. **Internal task assigned to Sarai** to manually follow up within 48 hours.

### Auto-reply email — Spanish

**Subject:** Gracias por ofrecer tu tiempo — PARA TODOS

> Hola {{first_name}},
>
> Gracias por ofrecer tu tiempo a esta conversación. Tu apoyo en {{volunteer_areas}} es exactamente el tipo de participación que hace que esta iniciativa sea genuinamente comunitaria.
>
> Vamos a contactarte personalmente en los próximos 1-2 días para coordinar próximos pasos. Si quieres, también puedes asistir a una sesión comunitaria: en español el jueves 4 de junio o en inglés el viernes 5 de junio, 5pm en el Teatro-Cine General Manuel Márquez.
>
> Un abrazo,
> **Sarai Torres y Barrett Masso**
> Comité Promotor Inicial — PARA TODOS

### Auto-reply email — English

**Subject:** Thank you for offering your time — PARA TODOS

> Hi {{first_name}},
>
> Thank you for offering your time to this conversation. Your support in {{volunteer_areas}} is exactly the kind of participation that makes this initiative genuinely community-driven.
>
> We'll be in touch personally in the next 1-2 days to coordinate next steps. If you'd like, you're welcome to join a community session: Spanish on Thursday June 4 or English on Friday June 5, 5pm at Teatro-Cine General Manuel Márquez.
>
> Warmly,
> **Sarai Torres & Barrett Masso**
> Initial Founding Committee — PARA TODOS

---

## Form 3 — Donation Intent (Path A or Path B)

**Form name:** `Donation Intent — Pacífico Sur BCS`
**Anchor on landing page:** Modal opened by Path A or Path B buttons in `#participar`
**Purpose:** Capture donation intent + amount + path preference. Barrett manually replies with wire/transfer instructions. Once Stripe/SPEI links are live, this form gets retired or pre-fills the payment.

### Fields

| Order | Label (ES / EN) | Type | Required | Notes |
|---|---|---|---|---|
| 1 | Nombre / Name | Single line text | Yes | |
| 2 | Email | Email | Yes | |
| 3 | WhatsApp | Phone | No | |
| 4 | Comunidad / Community | Dropdown | No | (Same options) |
| 5 | Idioma preferido / Preferred language | Radio | Yes | ES / EN / Both |
| 6 | Monto que tienes en mente / Amount in mind | Dropdown | Yes | Options below |
| 7 | Si "Otro monto", especifica (MXN) / If "Other amount", specify (MXN) | Number | No | Conditional on Q6 = "Otro" |
| 8 | Camino de donación / Donation path | Hidden field | Yes | Value: `A` (Vita, factura inmediata) or `B` (TODOS PARA TODOS A.C., factura pendiente SAT) — set by which button opened the form |
| 9 | ¿Donación anónima? / Anonymous donation? | Checkbox | No | |
| 10 | ¿Donación recurrente mensual? / Monthly recurring? | Checkbox | No | For follow-up — recurring not yet wired |
| 11 | ¿Cómo te enteraste de esta iniciativa? / How did you hear about this? | Single line text | No | Helps attribution |
| 12 | Mensaje opcional / Optional message | Long text | No | |
| 13 | source | Hidden field | — | Value: `donation-intent-landing` |

### Amount options (Q6)
- 50 MXN — Vecino del Pueblo / Pueblo Supporter
- 500 MXN — Vecino Activo / Active Neighbor
- 5,000 MXN — Constructor Comunitario / Community Builder
- 50,000 MXN — Patrón Etapa I / Stage I Patron
- 500,000 MXN — Fundador / Founding Underwriter
- Otro monto / Other amount

### Tags applied on submit
- `donation-intent`
- `donation-path-a` OR `donation-path-b` (based on Q8)
- `donation-tier-{50|500|5k|50k|500k|other}`
- `donation-anonymous` (if Q9 ticked)
- `donation-recurring-interest` (if Q10 ticked)
- `comunidad-{value}` (if provided)
- `idioma-{value}`

### Workflow on submit
1. Add to pipeline `Community Conversation`, stage `Donor Intent`.
2. Auto-reply email **with wire/transfer instructions** based on Q8 (template below).
3. SMS/WhatsApp confirmation (short) if number provided.
4. Notification email to `hola@paratodosbcs.mx` + `barrettmasso@me.com` with all fields + amount.
5. **Internal task assigned to Barrett** to personally follow up within 24 hours.

### Auto-reply email — Path A (Vita Insumos, immediate factura) — Spanish

**Subject:** Instrucciones de donación — PARA TODOS (Camino A · factura inmediata)

> Hola {{first_name}},
>
> Gracias por tu intención de apoyar esta conversación con {{amount}} MXN. Tu apoyo es lo que hace posible que la comunidad tenga la información que necesita para decidir bien.
>
> **Has elegido el Camino A — donación al despacho legal (Vita Insumos México, S de RL)**, que emite factura inmediata.
>
> **Próximos pasos:**
>
> En las próximas 24 horas, te enviaré personalmente las instrucciones de transferencia (cuenta bancaria, CLABE o link de Stripe según prefieras) junto con la información que Vita necesita para emitirte la factura inmediatamente al recibir el pago.
>
> Si quieres acelerar el proceso, respóndeme con:
> - Razón social / RFC para la factura
> - Domicilio fiscal
> - Uso de CFDI preferido (G03 — Gastos en general suele ser el más común para donaciones)
>
> Cualquier pregunta, respóndeme directamente este correo o escríbeme por WhatsApp.
>
> **Un compromiso:** Cada peso recaudado se publica en el reporte trimestral de TODOS PARA TODOS A.C. con detalle del uso. Tu factura es válida fiscalmente desde el momento en que se emite.
>
> Gracias por confiar en este proceso,
> **Barrett Masso**
> Co-fundador — PARA TODOS

### Auto-reply email — Path A — English

**Subject:** Donation instructions — PARA TODOS (Path A · immediate factura)

> Hi {{first_name}},
>
> Thank you for your intention to support this conversation with {{amount}} MXN. Your support is what makes it possible for the community to have the information it needs to decide well.
>
> **You've chosen Path A — donation to the legal firm (Vita Insumos México, S de RL)**, which issues an immediate factura.
>
> **Next steps:**
>
> In the next 24 hours, I'll personally send you transfer instructions (bank account, CLABE, or Stripe link depending on preference) along with the information Vita needs to issue your factura the moment payment is received.
>
> To speed things up, you can reply with:
> - Razón social / RFC for the factura
> - Domicilio fiscal (Mexican tax address)
> - Uso de CFDI preferred (G03 — General expenses is typical for donations)
>
> Any questions, just reply to this email or message me on WhatsApp.
>
> **One commitment:** Every peso raised is published in TODOS PARA TODOS A.C.'s quarterly report with detail on its use. Your factura is fiscally valid from the moment it's issued.
>
> Thank you for trusting this process,
> **Barrett Masso**
> Co-founder — PARA TODOS

### Auto-reply email — Path B (TODOS PARA TODOS A.C., factura pending SAT) — Spanish

**Subject:** Instrucciones de donación — PARA TODOS (Camino B · factura en proceso)

> Hola {{first_name}},
>
> Gracias por tu intención de apoyar esta conversación con {{amount}} MXN.
>
> **Has elegido el Camino B — donación directa a TODOS PARA TODOS A.C.** Te informamos honestamente que el registro fiscal SAT y las cuentas bancarias de TODOS PARA TODOS A.C. están actualmente en proceso (1-2 meses). Cuando completemos el registro, podremos emitirte factura retroactiva por tu donación.
>
> **Tres opciones:**
>
> 1. **Esperar:** Te avisamos cuando el registro complete y te emitimos factura.
> 2. **Cambiarte al Camino A (factura inmediata):** Donas a través de Vita Insumos México y recibes factura el mismo día. Si prefieres, responde "CAMINO A" y te envío esas instrucciones.
> 3. **Donar ahora a TODOS PARA TODOS A.C. sin esperar factura:** Si tu intención es apoyar sin necesidad de deducción fiscal, te enviamos los datos de transferencia y registramos tu donación en el libro mayor público.
>
> Cuál prefieres? Respóndeme y procedemos.
>
> Gracias por la confianza,
> **Barrett Masso**
> Co-fundador — PARA TODOS

### Auto-reply email — Path B — English

**Subject:** Donation instructions — PARA TODOS (Path B · factura in process)

> Hi {{first_name}},
>
> Thank you for your intention to support this conversation with {{amount}} MXN.
>
> **You've chosen Path B — direct donation to TODOS PARA TODOS A.C.** We want to be honest with you: TODOS PARA TODOS A.C.'s SAT tax registration and bank accounts are currently in process (1-2 months). When registration completes, we can issue you a factura retroactively for your donation.
>
> **Three options:**
>
> 1. **Wait:** We'll let you know when registration completes and issue the factura.
> 2. **Switch to Path A (immediate factura):** Donate through Vita Insumos México and receive factura same-day. If you prefer this, reply "PATH A" and I'll send those instructions.
> 3. **Donate now to TODOS PARA TODOS A.C. without waiting for factura:** If your intention is to support without needing a tax deduction, we'll send transfer details and record your donation in the public ledger.
>
> Which works for you? Reply and we'll proceed.
>
> Thanks for the trust,
> **Barrett Masso**
> Co-founder — PARA TODOS

---

## After creating each form in GHL

1. Open the form → "Integrate" → "Embed Code"
2. Choose "Inline iframe" embed
3. Copy the iframe snippet — looks like `<iframe src="https://api.leadconnectorhq.com/widget/form/{formId}" ...></iframe>` plus a `<script>` tag
4. Paste into the Next.js repo:
   - Form 1 → `app/[locale]/_sections/NextSession.tsx` (where the brief specifies `<div id="ghl-form-1">`)
   - Form 2 → `app/[locale]/_sections/Participate.tsx`
   - Form 3 → `app/[locale]/_sections/Participate.tsx` (donation modal)

Or hand the 3 snippets to Claude Code and it will wire them in.

## Recommended GHL automations to set up later

- Drip sequence for signups (Day 2, Day 4, Day 7) leading up to the June 4 / June 5 sessions
- Re-engagement for volunteers who don't respond within 7 days
- Quarterly transparency report broadcast to all donor-intent contacts
- WhatsApp group invite send-out post-town-hall to confirmed attendees
