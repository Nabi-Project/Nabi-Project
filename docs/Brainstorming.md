# Brainstorming

## Future Service Ideas (Requirements)

### Botting

- Interact with Twitch (server).
- Interact with Discord (server).
- Provide a botting specific command handler for IRC users.

---

## System Requirements Specification

This describes the functional and nonfunctional requirements in more detail. If necessary, further detail may also be added to the nonfunctional requirements. Interfaces to other systems may be defined.

### Core System Requirements

1. Commands
   1. Ability to accept commands
   2. Ability to execute commands
   3. Ability to return output of commands
   4. Ability to add new commands
   5. Ability to remove existing commands
   6. Ability to modify existing commands
   7. Ability to add custom functionality to commands
2. New Features
   1. Ability to have new features add to existing systems
   2. Ability to have new features replace existing systems
   3. Ability to have new features create new systems
   4. Ability to have new features customize existing systems

### User Interface Requirements

1. Graphics
   1. Ability to view output of commands
   2. Ability to view a Graphical Assistant
   3. Ability to view settings
2. Interface
   1. Ability to enter commands
   2. Ability to modify the Graphical Assistant
   3. Ability to modify settings

### Plugin Requirements

#### Reminders

- Set Reminders
- Alert the user of the Reminder

#### Email Integration

- Send Emails
- Receive input by Email

#### SMS Integration

- Send SMS messages
- Receive input by SMS message

#### IRC Integration

- Send messages to IRC channel
- Monitor IRC channel
- Receive input by reading IRC channel content

#### Discord Integration

- Send Discord DMs
- Receive input by Discord DM
- Monitor one (or more) discord channel(s)
- Perform Moderator Actions in one (or more) discord channel(s)
- Send messages in one (or more) discord channel(s)
- Receive input by messages in one (or more) discord channel(s)

#### Windows/Linux/Android Integration

- Provide OS specific functionality (ex. File Search)

#### Internet Search

- Search the Internet for a query

#### Basic Assistant Expressions

- Allow assistant expression changes through image-swapping

#### Live-2D Assistant

- Replace the semi-static 2D assistant with a Live-2D character model.
- Provide relevant configuration options for the Live-2D assistant.

#### 3D Assistant

- Replace the semi-static 2D assistant with a 3D VRM character model.
- Provide relevant configuration options for the 3D VRM assistant.

#### Image Recognition

- Perform Image Recognition (AI)

#### Voice Recognition

- Process Verbal Queries as Text (AI STT)

#### Personal Voice

- Vocalize text responses (AI TTS)
- Allow vocal customization

#### Machine Translation

- Perform Machine Translation (AI)

#### Natural Language Queries

- Parse Complex Natural Language Queries (AI)
- Maintain a log of past natural language queries
- Utilize query log to influence response to new natural language queries (AI)
- Determine Relative Positivity/Negativity in Queries (AI)
- Utilize relative positivity/negativity to influence response to new queries (AI)

---

## User Stories

Template: As a [ USER ] I want to [ ACTION ] So that [ REASONING ]

User Personas:

1. User: Someone who accesses Nabi from within the VPN on the Internet.
2. Admin: Someone who accesses Nabi from within the local network.

<!-- markdownlint-disable MD033 -->
<table>

<tr><th>User Story</th><th>Acceptance Criteria</th></tr>

<tr><td>
As a User, I want to View/Interact with Nabi's Model So that I can feel a deeper emotional connection to Nabi.
</td><td><ul><li>
    Display Nabi's Model.</li><li>
    Directly interact with Nabi's Model.
</li></ul></td></tr>

<tr><td>
As a User, I want to Interact with Nabi using text input So that I can be precise about what I ask her to do.
</td><td><ul><li>
    Ability to Execute Any Available Command using only Text.
</li></ul></td></tr>

<tr><td>
As a User, I want to Interact with Nabi using voice input So that I can ask her to do things without using my hands.
</td><td><ul><li>
    Ability to Execute Any Available Command using only Voice.
</li></ul></td></tr>

<tr><td>
As a User, I want to Tell Nabi to do things using Both English and Japanese So that Nabi will understand me regardless the language I speak.
</td><td><ul><li>
    Ability to Execute Any Available Command using only English.</li><li>
    Ability to Execute Any Available Command using only Japanese.
</li></ul></td></tr>

<tr><td>
As an Admin, I want to Have Nabi do things to locally networked Devices upon request So that I can centralize my workflow.
</td><td><ul><li>
    Integrate with programs running on a device using a client.</li><li>
    Connect to devices pre-installed with a client on the local network.</li><li>
    View/Add/Remove/Modify/Execute Any/All Admin Command(s) available on connected devices.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi do things using other programs on the same device So that I can centralize my workflow.
</td><td><ul><li>
    Interact with Gmail/Outlook (client device)</li><li>
    Interact with Discord (client device)</li><li>
    Manage SMS Messages (client device)</li><li>
    Manage Line Messages (client device)
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi remind me of things So that I don't lose track of them.
</td><td><ul><li>
    Create/Manage reminders.</li><li>
    Alert User of reminders periodically/on-request.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi wake-me-up/alert-me at certain times So that I don't lose track of time.
</td><td><ul><li>
    Set/Manage alarms.</li><li>
    Alert User when an alarm goes off.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi remember what I need to do when So that I don't lose track of my plans.
</td><td><ul><li>
    Create/manage todo items.</li><li>
    Alert User of todo-items when/before they become due.
</li></ul></td></tr>

<tr><td>
As an Admin, I want to Have Nabi Bot/Moderate my Discord/Twitch Channels So that my channels stay fun/safe.
</td><td><ul><li>
    Interact with Discord (server).</li><li>
    Interact with Twitch (server).</li><li>
    Provide a botting specific command handler for IRC users.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi search the internet So that I can quickly find new information.
</td><td><ul><li>
    Search the internet using text.</li><li>
    Search the internet using images.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi translate between languages So that I can get the gist of things in a language I don't understand.
</td><td><ul><li>
    Perform machine translation.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Nabi lookup a word/kanji in a JP<->EN dictionary So that I can quickly-verify/learn-new words/kanji.
</td><td><ul><li>
    Perform lookups in a JP<->EN dictionary.
</li></ul></td></tr>

<tr><td>
As a User, I want to Have Conversations with Nabi in Japanese So that I can feel a deeper emotional connection to Nabi.
</td><td><ul><li>
    Ability to respond appropriately to Japanese Language Conversations.
</li></ul></td></tr>

<tr><td>
As a User, I want to Hear Nabi respond using Speech So that I don't have to read the text response if I don't feel like it.
</td><td><ul><li>
    Read text out loud with Nabi's unique voice.
</li></ul></td></tr>

<tr><td>
As a User, I want to See Nabi's Model Animated when she responds So that I can feel a deeper emotional connection to Nabi.
</td><td><ul><li>
    Animate Nabi's Model as a response to Commands.</li><li>
    Lip Sync to match Nabi's Voice output.
</li></ul></td></tr>

<tr><td>
As an Admin, I want to Modify Nabi's responses So that Nabi's character stays consistent with my vision.
</td><td><ul><li>
    View/Add/Remove/Modify/Execute Any/All Regular Commands.</li><li>
    View/Add/Remove/Modify/Execute Any/All Admin Commands.</li><li>
    Configure Any/All Services.
</li></ul></td></tr>

</table>
<!-- markdownlint-enable MD033 -->
