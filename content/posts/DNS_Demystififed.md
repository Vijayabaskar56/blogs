+++
title = 'DNS Demystified'
date = 2024-05-27T22:20:11+05:30
draft = false
+++


## Introduction

Setting up my blog and configuring my domain introduced me to the fascinating world of the Domain Name System (DNS). As I delved deeper, I realized how crucial DNS is to the functioning of the internet, yet it often goes unnoticed. This post aims to demystify DNS from a beginner's perspective, sharing what I've learned about this robust system that underpins the web.

> “DNS is kind of the hamster under the hood that drives the Internet.” - David Ulevitch

## What is DNS?

The Domain Name System (DNS) is an essential component of the internet's infrastructure. It functions as the internet's phonebook,translating human-friendly domain names like "vijayabaskar.xyz" into IP addresses that computers use to identify each other on the network.

Without DNS, we would need to memorize long strings of numbers for every website we want to visit. DNS solves this problem with a hierarchical system designed to handle billions of queries per second with remarkable efficiency.

Imagine the challenge of creating a database with billions of entries that needs to be queried almost instantaneously. The brilliance of DNS lies in its hierarchical structure, which distributes the workload across multiple servers, ensuring quick and reliable access to any domain.

## How DNS Works

The DNS process involves several key components working together to resolve domain names into IP addresses. Here's a simplified breakdown:

### **Root Server**
   - The top-level DNS server that directs queries to the appropriate TLD server.

### **Top Level DNS Server**
   - Manages the top-level domains (e.g., .com, .org) and directs queries to the correct authoritative name server.

### **Authoritative Name Server**
   - Contains the actual DNS records for the domain and responds with the IP address for the requested domain.

### **Local DNS Server**
   - Often operated by ISPs, these servers cache DNS records to speed up the resolution process for frequently accessed domains.

![DNS Resolvers Flow](/assets/dns-flow.jpg)

## Types of DNS Records

DNS records are entries in the DNS database that provide information about a domain. Here are the most common types:

- **A Record (Address Record)**
  - **Function:** Maps a hostname to a 32-bit IPv4 address.
  - **Example:** "vijayabaskar.xyz" to 192.0.2.11.

- **AAAA Record (IPv6 Address Record)**
  - **Function:** Maps a hostname to a 128-bit IPv6 address.
  - **Example:** Similar to A records but for IPv6 addresses.

- **CNAME Record (Canonical Name)**
  - **Function:** Creates an alias for one name to another.
  - **Example:** "www.vijayabaskar.xyz" to "webserver.vijayabaskar.xyz."

- **NS Records (Nameservers)**
  - **Function:** Specifies the authoritative nameservers for a domain.
  - **Example:** Points to servers where all DNS records for a domain are stored.

- **MX Records (Mail Exchanger)**
  - **Function:** Directs email to the correct mail server.
  - **Example:** "user\@vijayabaskar.xyz" is directed to the appropriate mail server.

- **TXT Record**
  - **Function:** Provides text information to sources outside your domain.
  - **Example:** Used for SPF records to prevent email spoofing.

- **PTR Record (Pointer)**
  - **Function:** Used for reverse DNS lookup, associating an IP address with a domain name.
  - **Example:** Verifies the authenticity of an IP address.

- **SRV Record (Service Locator)**
  - **Function:** Specifies the location of services (e.g., SIP, XMPP) within the network.
  - **Example:** Used for generalized service location.

DNS is a fundamental yet often overlooked component of the internet, enabling us to navigate the web with ease. Understanding DNS not only demystifies the process but also highlights the incredible engineering that powers our daily internet activities. My journey into DNS has been eye-opening, revealing the intricate mechanisms that keep the internet running smoothly.
