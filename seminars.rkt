#lang scribble/text
@(require
   racket/date
  gregor
  "templates.rkt")

@(define (seminar title speaker link aff date room abstract bio)
   (define id (gensym))
  @list{
<div id="@|id|" class="col-md-12 pn-seminar compact">
  <script type="text/javascript">
    if (new Date() >= new Date('@(datetime->iso8601 date)')) {
      document.getElementById('@|id|').classList.add('finished');
    }
  </script>
  <div class="pn-main-informations">
    <a onclick="return false;" class="pn-title">@|title|</a>
    <br />
    <span class="pn-name">@|speaker|</span>
    <br />
    <span class="pn-affiliation">@|aff|</span>
    <a class="pn-url" target="_blank" href="@link">link</a>
    <span class="pn-datetime">@(~t date "d MMMM, y h:mma")</span>
    <span class="pn-room">@|room|</span>
  </div>
  <div class="pn-abstract-bio">
    <p>
      <span class="pn-title-2">Abstract</span>
      <span>@|abstract|</span>
    </p>
    <p>
      <span class="pn-title-2">Bio</span>
      <span>@|bio|</span>
    </p>
  </div>
</div>

<br />
})

<!DOCTYPE html>
<html lang="en">
  @header{Seminars}
  <body id="pn-top">
   @navbar{Seminars}
   @subpage-title{Seminars}

    <div class="pn-main-wrapper">
      <div class="content">
        <div class="container">
          <div class="row">
            <p>For NEU students and staff, the mailing lists <strong>prl-students</strong> and <strong>prl-staff</strong> are maintained by <a mailto:"j.vitek@"@"neu.edu">Jan Vitek</a>.</p>
          </div>
        </div>

        <div class="pn-separator-img-short"></div>

        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2>Programming Language Seminar</h2>
              <p>
              The PL seminar meets in WVH
              [<a href="http://www.ccs.neu.edu/home/wand/directions.html">directions</a>]. The <a href="http://lists.ccs.neu.edu/pipermail/pl-seminar">mailing
                list</a> is public. An <a
                href="https://calendar.google.com/calendar/embed?src=k4cg1vgb3l2n8r2ph4t01dmtpc@"@"group.calendar.google.com&ctz=America/New_York">HTML
                calendar</a> and an <a
                href="https://calendar.google.com/calendar/ical/k4cg1vgb3l2n8r2ph4t01dmtpc%40group.calendar.google.com/public/basic.ics">ICAL
                calendar</a>
              are available for your convenience.
              </p>
            </div>
          </div>

          <br />

        <!-- ROW -->
        <div class="row">

          @(seminar
            "Programming Languages Meets Programmable Networks"
            "Arjun Guha"
            "https://people.cs.umass.edu/~arjun/home/"
            "U. Massachusetts, Amherst"
            (datetime 2015 11 16 13 00)
            "WVH 366"
            @list{
<p>Computer networks do not simply connect machines together, but run several
applications on network devices, such as load balancers, intrusion detection
systems, authentication portals, and more. Historically, these applications were
black-boxes running on proprietary hardware, but software-defined networking
(SDN) now allows anyone to write their own programs using open networking
protocols (e.g., OpenFlow). So, what are the right abstractions for programming networks? This talk will try
to address this question in three ways. </p>
<p>First, we present a syntactic theory of network forwarding called NetKAT, which supports equational reasoning about network-wide behavior. Using NetKAT, programmers can ask and answer questions like, "Can A communicate with B?",
"Does all traffic traverse my intrusion detection system?", "Is there a loop in
my network?", and so on. </p>
<p>Second, we present a fast and efficient compiler for NetKAT. Although several
network compilers already exist, they are unusable on even moderately sized
networks. Using new data structures and compilation algorithms, our new compiler
is two orders of magnitudes faster than prior work and scales to large
datacenter networks. </p>
<p>Finally, we consider the problem of building a reliable runtime system for
NetKAT. NetKAT abstracts away several low-level details of networking hardware.
Although this is a boon for the network programmer, the burden now shifts to us
to engineer abstractions correctly. We present a Coq-certified runtime system
that is proven correct with respect to a detailed operational model software-
defined networks.
</p>}
            @list{
Arjun Guha is an assistant professor of Computer Science at UMass Amherst. He
enjoys tackling problems in systems using the tools and principles of
programming languages. Apart from network programming, he has worked on Web
security and system configuration languages. He received a PhD in Computer
Science from Brown University in 2012 and a BA in Computer Science from Grinnell
College in 2006.})

        @(seminar
           "Declarative Programming for Eventual Consistency"
           "Suresh Jagannathan"
           "https://www.cs.purdue.edu/homes/suresh/"
           "Purdue University"
           (datetime 2015 11 13 10 30)
           "WVH 366"
           @list{
<p>In geo-replicated distributed data stores, the need to ensure responsiveness
in the face of network partitions and processor failures results in
implementations that provide only weak (so-called eventually consistent)
guarantees on when data updated by one process becomes visible to another.
Applications must be carefully constructed to be aware of unwanted
inconsistencies permitted by such implementations (e.g., having negative
balances in a bank account, or having an item appear in a shopping cart
after it has been removed), but must balance correctness concerns with
performance and scalability needs.  Because understanding these tradeoffs
requires subtle reasoning and detailed knowledge about the underlying data
store, implementing robust distributed applications in such environments is
often an error-prone and expensive task.</p>

<p>To overcome these issues, this talk presents a declarative programming model
for eventually consistent data stores called Quelea.  The model comprises a
contract language, capable of defining fine-grained application-level
consistency properties for replicated data types (and transactions over
objects of these types), and a contract enforcement system to analyze
contracts and automatically generate the appropriate consistency protocol
for the method protected by the contract.  By doing so, Quelea enables
programmers to reason compositionally about consistency from the perspective
of high-level application requirements, not low-level implementation
features.</p>

<p>This is joint work with Gowtham Kaki and K.C. Sivaramakrishnan.</p>}
        @list{
<p>Suresh Jagannathan is a Professor of Computer Science at Purdue University
where he has been on leave since September 2013, serving as a program
manager in the Information Innovation Office at DARPA.  He has also been a
visiting faculty at Cambridge University, where he spent a sabbatical year
in 2010; and, prior to joining Purdue, was a senior research scientist at
the NEC Research Institute in Princeton, N.J.  He received his Ph.D from
MIT.</p>

<p>His research interests are in programming languages generally, with specific
focus on compilers, functional programming, program verification, and
concurrent and distributed systems.  At DARPA, he manages programs on
probabilistic programming and machine learning (PPAML), program synthesis
and repair leveraging predictive analytics over large software corpora
(MUSE), and self-adaptive software through resource-aware analyses,
runtimes, and architectures (BRASS).</p>})

        @(seminar
           "Hop.js: multitier programming in JavaScript"
           "Manuel Serrano"
           "http://www-sop.inria.fr/members/Manuel.Serrano/"
           "INRIA"
           (datetime 2015 11 3 10 30)
           "WVH 366"
           @list{
Hop.js is a multitier extension of JavaScript. It allows a single
JavaScript program to describe the client-side and the server-side
components of a Web application. Its runtime environment ensures a
consistent execution of the application on the server and on the
client. This talk will shows its minimal set of JavaScript extensions
that makes Web programming easier. It will present its runtime
environment, with an emphasize on the handling of server-side
parallelism.
           }
           @list{
Manuel is a researcher at INRIA Sophia Antipolis, he used to work on Scheme.
           }
           )

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Scalloc and Selfie: Fast Memory Allocation and Self-referential Systems Software</a>
              <br /><span class="pn-name">Christoph Kirsch</span>
              <br />
              <span class="pn-affiliation">U. of Salzburg</span>
              <a class="pn-url" target="_blank" href="http://cs.uni-salzburg.at/~ck/">link</a>
              <span class="pn-datetime">2 November, 11:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
         This talk is about scalloc, a fast, multicore-scalable, low-fragmentation memory allocator and selfie, a 4000-line implementation of a tiny self-compiling C compiler and a tiny self-executing MIPS emulator for teaching systems engineering. Scalloc is a typical example of a very complex, multi-year research effort while selfie is, at least for now, a purely educational, many-year effort in teaching compiler, operating system, and virtual machine design based on a single, highly principled software platform. So far scalloc and selfie only share the passion of their authors and are otherwise two distinct projects. Yet earlier versions of selfie, before they were even identified as such, were instrumental in bringing up the generation of students who did scalloc.
        The main ideas behind scalloc are: uniform treatment of small and big objects through so-called virtual spans, efficiently and effectively reclaiming free memory through fast and scalable global data structures, and constant-time (modulo synchronization) allocation and deallocation operations that trade off memory reuse and spatial locality without being subject to false sharing. The main ideas behind selfie are: a compiler written in and for a tiny subset of C called C* which uses the dereferencing * operator of C for memory access but lacks data structures and many other features and a MIPS emulator written in C* that can execute itself. Both are combined and extended by students to do very cool stuff.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Christoph Kirsch is Professor at the University of Salzburg, Austria. From
        1999 to 2004 he worked as Postdoctoral Researcher at UC, Berkeley. He later
        returned to Berkeley as Visiting Scholar (2008-2013) and Visiting Professor
        (2014) as part of a collaborative research effort in Cyber-Physical
        Systems. His most recent research interests are in concurrent data
        structures, memory management, and so-called spatial programming. Dr. Kirsch
        co-invented embedded programming languages and systems such as Giotto, HTL,
        and the Embedded Machine, and more recently co-designed high-performance,
        multicore-scalable concurrent data structures and memory management
        systems. He co-founded the International Conference on Embedded Software
        (EMSOFT) and served as ACM SIGBED chair from 2011 until 2013 and ACM TODAES
        associate editor from 2011 until 2014.
              </span>
              </p>
            </div>
          </div>

          <br />



          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Coordinated Concurrent Programming in Syndicate</a>
              <br /><span class="pn-name">Tony Garnock-Jones</span>
              <br />
              <span class="pn-affiliation">Northeastern</span>
              <a class="pn-url" target="_blank" href="http://www.ccs.neu.edu/home/tonyg/">link</a>
              <span class="pn-datetime">October 28, 12:00PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>Most programs interact with the world: via graphical
user interfaces, networks, etc. This form of interactivity entails
concurrency, and concurrent program components must coordinate their
computations. This talk will present Syndicate, a design for a coordinated,
concurrent programming language. Each concurrent component in Syndicate is a
functional actor that participates in scoped conversations. The medium of
conversation arranges for message exchanges and coordinates access to common
knowledge. As such, Syndicate occupies a point in design space halfway
between actors and threads.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Tony is a graduate student working with Matthias.
              </span>
              </p>
            </div>
          </div>

          <br />





          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Memory corruption: why protection is hard</a>
              <br /><span class="pn-name">Mathias Payer</span>
              <br />
              <span class="pn-affiliation">Purdue</span>
              <a class="pn-url" target="_blank" href="https://nebelwelt.net">link</a>
              <span class="pn-datetime">23 October, 1:30PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
		Memory corruption plagues systems since the dawn of computing. With the
rise of defense techniques like stack cookies, ASLR, and DEP, attacks
have become much more complicated, yet control-flow hijack attacks are
still prevalent. Attacks leverage code reuse attacks, often using some
form of information disclosure. Stronger defense mechanisms have been
proposed but none have seen wide deployment so far (i) due to the time
it takes to deploy a security mechanism, (ii) incompatibility with
specific features, and (iii) most severely due to performance overhead.
In the talk, we evaluate the security benefits and limitations of the
status quo and look into upcoming defense mechanisms (and their attacks).

Control-Flow Integrity (CFI) and Code-Pointer Integrity (CPI) are two of
the hottest upcoming defense mechanisms. CFI guarantees that the runtime
control flow follows the statically determined control-flow graph. An
attacker may reuse any of the valid transitions at any control flow
transfer. CPI on the other hand is a dynamic property that enforces
memory safety guarantees like bounds checks for code pointers by
separating code pointers from regular data. We will discuss differences
and advantages/disadvantages of both approaches, especially the security
benefits they give under novel attacks like Counterfeit Object-Oriented
Programming (COOP) and Control-Flow Bending (CFB).  COOP reuses complete
functions as gadgets and CFB bends the control flow along valid but
unintended paths in the control-flow graph of a program.

              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
Mathias Payer is a security researcher and an assistant professor in
computer science at Purdue university. His interests are related to
system security, binary exploitation, user-space software-based fault
isolation, binary translation/recompilation, and (application)
virtualization. His research focuses on protecting applications even in
the presence of vulnerabilities, with a focus on memory corruption.
Before joining Purdue in 2014 he spent two years as PostDoc in Dawn
Song's BitBlaze group at UC Berkeley. He graduated from ETH Zurich with
a Dr. sc. ETH in 2012.
              </span>
              </p>
            </div>
          </div>

          <br />


         <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Using LLVM as a backend for R</a>
              <br /><span class="pn-name">Jan Vitek</span>
              <br />
              <span class="pn-affiliation">Northeastern University</span>
              <a class="pn-url" target="_blank" href="http://homepage.stat.uiowa.edu/~luke/">link</a>
              <span class="pn-datetime">2 October 2015, 12:00PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
        I will provide an  update on the status of the Reactor project which aims to use LLVM as just-in-time compiler for the R language.  I will discuss early challenges such as integration in the environment and garbage collection suport.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Jan Vitek is a Professor at Northeastern, he works on programming language design and implementation.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Some New Developments for the R Engine</a>
              <br /><span class="pn-name">Luke Tierney</span>
              <br />
              <span class="pn-affiliation">U. Iowa</span>
              <a class="pn-url" target="_blank" href="http://homepage.stat.uiowa.edu/~luke/">link</a>
              <span class="pn-datetime">2 October 2015, 10:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span> R is a dynamic language for statistical
        computing and graphics. In recent years R has become a major framework
        for both statistical practice and research. This talk present a very
        brief outline of the R language and its evolution and describe some
        current efforts on improvements to the core computational engine,
        including work on compilation of R code, efforts to take advantage of
        multiple processor cores, and modifications to support working with
        larger data sets.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Luke Tierney is a Professor Statistics at the University of Iowa and one of the key contributors to the R project.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Completions and Diagnostics in RStudio </a>
              <br /><span class="pn-name">Kevin Ushey</span>
              <br />
              <span class="pn-affiliation">RStudio</span>
              <a class="pn-url" target="_blank" href="#">link</a>
              <span class="pn-datetime">2 October 2015, 11:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
        Kevin will discuss the details behind the implementation of completions +
        diagnostics, as well as some future goals re: enabling user extensibility of
        both the autocompletion and diagnostics systems.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Kevin is a software engineer at RStudio. He graduated from the University of British Columbia with an MSc in Statistics, with a thesis focusing on the use of non-linear mixed effects models in the analysis of yeast growth curves in gene knockout studies. Shortly thereafter, he worked doing data analysis at St. Paul's hospital in Vancouver as part of the Daley lab, and later at the Fred Hutchinson Cancer Research Center in Seattle as part of the Gottardo lab. At RStudio, Kevin primarily works on the RStudio IDE, but also maintains the R package packrat.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Verification Infrastructure for Permission-based Reasoning</a> <br /><span class="pn-name">Alex Summers</span>
              <br />
              <span class="pn-affiliation">ETH Zürich</span>
              <a class="pn-url" target="_blank" href="http://people.inf.ethz.ch/summersa/wiki/">link</a>
              <span class="pn-datetime">26 July 2015, 1:45PM</span><span class="pn-room">WVH 166</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span> Modern verification techniques are becoming
        ever-more powerful and sophisticated, and building tools to implement
        them is a time-consuming and difficult task. Writing a new verifier to
        validate each on-paper approach is impractical; for this reason
        intermediate verification languages such as Boogie and Why3 have become
        popular over the last decade. However, verification approaches geared
        around complex program logics (such as separation logic) have typically
        been implemented in specialised tools, since the reasoning is hard to
        map down to first-order automated reasoning. In practice, this means
        that a rich variety of modern techniques have no corresponding tool
        support.  In this talk, I will present the new Silver intermediate
        verification language, which has been designed to facilitate the
        lightweight implementation of a variety of modern methodologies for
        program verification. In contrast to lower-level verification languages,
        Silver provides native support for heap reasoning; modes of reasoning
        such as concurrent separation logic, dynamic frames and
        rely-guarantee/invariants can be simply encoded.  Silver has been
        developed as part of the Viper project, which provides two automated
        back-end verifiers for Silver programs. Since releasing our software in
        September last year, it has been used for (internal and external)
        projects to build tools for Java verification, non-blocking concurrency
        reasoning, flow-sensitive typing and reasoning about GPU and Linux
        kernel code.
              </span></p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Alex Summers obtained his PhD from Imperial College
        London in 2009, in the area of type systems and
        classical logics. Since then he has worked in a
        variety of areas concerning software correctness and
        verification, at Imperial College London and ETH
        Zurich. His research interests include developing
        specification techniques for different (usually
        concurrent) programming paradigms, and implementing
        these in automatic verification tools. He was
        recently awarded the 2015 AITO Dahl-Nygaard Junior
        Prize for his work on type systems and the
        verification of object-oriented programs.
              </span>
              </p>
            </div>
          </div>

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Concurrent Trace Sets for Synchronization Synthesis</a> <br /><span class="pn-name">Roopsha Samanta</span>
              <br />
              <span class="pn-affiliation">IST Austria </span>
              <a class="pn-url" target="_blank" href="http://pub.ist.ac.at/~rsamanta/">link</a>
              <span class="pn-datetime">26 June 2015, 1:30PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>In this talk, I will first present a method and
        a tool TARA for generating succinct representations of sets of
        concurrent traces. In our work, we focus on trace sets that contain all
        correct or all incorrect permutations of events from a given trace. We
        represent such trace sets as Boolean combinations of happens-before
        ordering constraints between events.  Our trace set representations can
        drive diverse verification, fault localization, repair, and synthesis
        techniques for concurrent programs. In the remainder of the talk, I will
        focus on the use of our representation for synchronization synthesis.
        This work appears in POPL 2015 and CAV 2015, and is joint work with
        Pavol Cerny, Ed Clarke, Ashutosh Gupta, Tom Henzinger, Arjun
        Radhakrishna, Leonid Ryzhyk and Thorsten Tarrach.
              </span></p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
              </span>
              </p>
            </div>
          </div>
        </div>


        <br />

        </div>

        <div class="pn-separator-img"></div>

        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2>Programming Language Seminar, Junior</h2>
              <p>The junior PL seminar (<a href="http://lists.ccs.neu.edu/pipermail/pl-sem-jr">mailing list</a>) (<a href="http://www.ccs.neu.edu/home/stamourv/pljr.html">home page</a>): a regular student-only seminar, suitable for those new to the study of programming languages.
              <br>
              <p>The PL Seminar, Jr. is a seminar where students new to the area can discuss the study of programming languages. This seminar is not intended to replace the main PL Seminar, but we hope that it can augment that by providing a place where junior students can discuss topics and ask questions at a pace better suited to our level of knowledge. Topics include:
              <ul>
                <li>Design and analysis of programming languages: syntax, semantics, pragmatics (ie, how do you use a language feature in real programs?)</li>
                <li>Implementation of programming languages</li>
                <li>Program development, both large and small</li>
                <li>Programming pedagogy</li>
                <li>Programming tools and environments</li>
                <li>and anything else that catches our interest.</li>
              </ul>
              We will not restrict ourselves to current research. Indeed, we intend to focus on older papers, textbook chapters, and surveys.
              </p>
              <br>
              <h4>Why PL Seminar, Jr.?</h4>
              <small>
                <p>In many ways, the existing PL Seminar doesn't serve junior students well. For us, it is intended to provide an environment where we can go to listen to current research. While nobody expects us to understand the entire presentation, we would ideally be able to say, "I didn't understand that, but it sounded really neat." By and large, that hasn't happened, for a number of reasons:
                <ul>
                  <li>For many of us, once our level of comprehension drops below a certain threshold, we tend to get frustrated and tune out. It's very difficult to say that something sounds interesting when you don't even feel like you understand the language.</li>
                  <li>The discussion environment isn't really helpful to junior students. The questions from the audience are typically research-oriented; often, a great deal of background knowledge is required to follow the ensuing discussions.</li>
                  <li>To overuse a metaphor, the bandwidth available for discussion tends to be filled by a relatively small number of people; it's often difficult for a junior student to get a word in edgewise.</li>
                </ul>
                <p></small>
              <br>
              <h4>Seminar Culture</h4>

              <small><p>For this seminar to be as useful as possible, it is important we establish the right "seminar culture." This is, of course, something that is hard to describe, and it will shift and evolve. However, there are some guidelines for what we are trying to accomplish:
                <ul>
                  <li>Attendees are willing to learn and to help others learn. They should not come in order to demonstrate how much smarter they are than everyone else just because they know so much more about a specific topic.</li>
                  <li>Active listening is encouraged. Ask questions! In particular, while research questions are of course welcome, basic comprehension questions are especially encouraged. If you don't understand something, or if you don't believe a step in a proof, ask!</li>
                  <li>An important corollary: no question is too stupid to ask. This places an obligation on other members of the seminar: rather than express frustration at the basic nature of a question, look at it as an opportunity to practice your skills in explaining things.</li>
                  <li>Of course, while active listening is a good thing, we want to avoid having a few people fill the communications channel. So, please be considerate of the other people present and allow them to join the discussions as well.</li>
                </ul>
                <p>Any attendee may propose a topic; we'll solicit volunteers to present a survey of the area. We expect that most of the presenters will be junior PL students, although outside presentations are welcome.</p></small>
            </div>
          </div>
        </div>
      </div>
    </div>
    @footer
  </body>
</html>