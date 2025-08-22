#import "../lib.typ": dates-helper

#let data = (
  name: "Pear",
  dates: "March 2025",
  parenthetical: "Blasterhacks 2025",
  hackathon: true,
  bullets: (
    [
      // It'd be better to have a non-breaking space between "2nd" and "place", but I worry that doing so would negatively affect ATS parsing
      Earned 2nd~place for Pear, a tool that enables clients to share cursors
      and type in the same terminal remotely in real time
    ],
    [
      Punched holes in a firewall using *libp2p* to set up *decentralized* network connections, a more privacy-respecting and cost-effective solution than a cloud-hosted central server
    ],
  ),
)
