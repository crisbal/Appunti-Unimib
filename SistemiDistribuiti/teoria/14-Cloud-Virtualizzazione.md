# Cloud Computing

# Technological trends

* Merge the physical and virtual worlds and the emergence of the digital mesh.
	* Expanding set of endpoints we use to access informations or to interact with people
	* Ambient user experience: the user experience flows across a shifting set of devices and interaction channels
* Smart machines
	* Algorithms define the future of business
	* Everything produces information.
	* Machine learning & co
	* Autonomous agents and things
* Architecture and platform trends needed to support digital and algorithmic business

In 2017:

* intelligent theme: intelligent software and hardware systems, AI and machine learning
* digital theme: immersive enviroments with VR and also use distributed technologies and blockchains
* mesh theme: connection between people and business demanding new interfaces and models

# Cloud compting

Is a buzzword with many meanings:

* provisioning (CPU, storage, connectivity)
* virtualization
	* IaaS, PaaS, SaaS
	* Issues: consolidation, migration, migration, security

## Definition

Cloud computing is a style of computing that provides scalable and elastic IT-related capabilities as a service to external customers using internet technologies: there is no need to have knowledge over the technology infrastructure

### NIST Definition

Cloud computing is a model for enabling ubiquitous, convenient, on-demand network access to a shared pool of configurable computing resources (e.g., networks, servers, storage, applications, and services) that can be rapidly provisioned and released with minimal management effort or service provider interaction.


This cloud model is composed of five essential characteristics:

* On-demand self-service.
	* Resource provisioning without human interaction
* Broad network access.
	* Capabilities are available over the network and accessed through standard mechanisms that promote use by heterogeneous thin or thick client platforms (e.g., mobile phones, laptops, and PDAs) as well as other traditional or cloud-based software services.
* Resource pooling.
	* The resources are pooled to serve multiple consumers using a multi-tenant model
* Rapid elasticity.
	* Quick scale up and down
* Measured service.
	* Automatically control and optimize resource usage by leveraging a metering capability

## Software Delivery Model

### SaaS

* Software/Interface
	* SaaS provides the users a complete software application or the user interface to the application itself.
* Outsourced Management
	* The cloud service provider manages the underlying cloud infrastructure including servers, network, operating systems, storage and application software, and the user is unaware of the underlying architecture of the cloud.
* Thin client interfaces
	* Applications are provided to the user through a thin client interface (e.g., a browser). SaaS applications are platform independent and can be accessed from various client devices such as workstations, laptop, tablets and smartphones, running different operating systems.
* Ubiquitous Access
	* Since the cloud service provider manages both the application and data, the users are able to access the applications from anywhere.

### Platform as a Service

Provide users with the capability to develop and deploy applications in the cloud using the development tools provided by the cloud service provider

The cloud provider manages the underlying cloud infrastucture (servers, network, operating systems)

Users manages the applications

### Infrastucture as a Service

Provides the users the capability to provision computing and storage resources.

The resources are provided to the users as virtual machine instances and virtual storage.

Provider manages the infrastructure

Virtual resources are provisioned on a pay per use paradigm.

## Types of clouds

Public: access by subscription and managed by the service provider.

Private: access limited to clients and its partners

Hybrid: two or more clouds that are bound together by technology

Community: shared by several organizations and saupports a specific community that has shared concerns

## What is cloud computing?

It is a user experice and a business model: emeargin style of computing in which everything is provided as a service to users over the network.

It is an infrastructure management methodology: managing large numbers of virtualized resources, even automatizing the managing part.

## What does cloud computing enable?

* Adavanced virtualization: share resources between many applications
* automated provisioning: on demand provisioning of resources, easier to deploy
* elastic scaling: scale up and down very fast
* service catalog ordering: order environments from a catalog
* metering and billing on demand: services are tracked with usage metrics
* internet access: access anywhere anytime

## Why cloud computing?

* On demand/self service
* Ubiquitous access
* Location independent resource pooling
* Scalability and elasticity
* Flexible pricing model

Why not:

* Security and privacy
* Low level of customization
* Lack of standards
* Performance and availability ??
* Legacy ??
* Legal matters ??

### Benefits

Business:

* Almost zero upfront infrastructure investment
* Just-in-time Infrastructure
* More efficient resource utilization
* Usage-based costing
* Reduced time to market

Technical:

* Scriptable infrastructure
* Auto-scaling
* Proactive Scaling
* More Efficient Development lifecycle
* Improved Testability
* Disaster Recovery and Business Continuity

## Cloud issues

First of all there are some risk factors:

* technologies are non standard and you are often subject to technological lock-in
* stored data is not guranteed to be confidential and private
	* data could potentially be accessed by external people: encrypt everything (access to the control panel, OS access, applications, data)
	* law and regulations issues
* resources can't be accessed directly to solve problems
* if the cloud provider goes down you go down too
	* use more than one provider

Cloud providers need to support interoperability standards to allow for the creation of new solutions

Cloud provider must work together to define shared solutions and offering (same or very similar directives to manage instances and also licensing and accounting)

It should be easy to monitor cloud applications and service performance: providers should define formats to allow this.

Users should be able to define granular access rules to cloud resources at different abstraction levels: application, physical and intermediate levels of access. This allow to define different user roles (with different permissions) in the cloud management panel.


# Virtualization

## Physical Servers

The traditional concept of a server it is not wrong. It is still very viable to create and manage a physical server just to run a single service.

This way of doing things has some pros and some cons:

Pros

* Easy to conceptualize
* Easy to deploy
* Easy to backup
* Virtually any application/service can be run from this type of setup

Cons

* Expensive to acquire and maintain hardware
* Not very scalable
* Difficult to replicate
* Redundancy is difficult to implement
* Vulnerable to hardware outages
* In many cases, processor is under-utilized

## Virtualization

Virtualization is a framework or methodology of dividing the resurces of a computer into multiple execution environments, by applying one or more concepts such as:

* hardware and software partitioning
* time sharing
* machine emulation

## Why virtualize?

Virtualization enables the introduction of new systems capabilities without adding complexity to already existing hardware or software.

Virtualization make it possible to run existing middleware on a new platforms by exportin a familiar interface to the middleware

We can also encapsulate an application in its own virtual machine: ship the app with its dedicated VM with all and just the needed requirements.

## Level of interfaces (??)

* Unprivileged machine instructions: an interface to the bare hardware that is available to any program
* Privileged instructions: provide an interface to the hardware for the OS
* System calls: provide an interface to the operating system for applications
* API: An OS interface through function calls (often used to hide the system call interface)


## Types of virtualization

* Process Virtual Machine: emulate the execution of a single process, programs are compiled to machine code which is interpreted or emulated (JVM, Windows)
	* This kind of VM defines a runtime system over the operating system
* Virtual Machine Monitor: provides a virtual machine for many different programs (VMware)
	* This kind of VM defines a layer between hardware and operating system software, completely hiding the real hardware to the software

## Virtual servers

The virtualization layer runs on one or more hardware hosts. The virtualization layer runs one or more virtual machines.

The pooled hardware can run arbitrary services.

The virtualization layer can map and remap VMs to available hardware resources at will. (This is especially useful when an host machine goes offline, just move the MV to another host)

* If the environment is built correctly, virtual servers will not be affected by the loss of a host.
* Hosts may be removed and introduced almost at will to accommodate maintenance.
* Virtual servers can be scaled out easily.
* Server templates can be created in a virtual environment to be used to create multiple, identical virtual servers
* Virtual servers themselves can be migrated from host to host almost at will.

Cons:

* Harder to conceptualize
* More costly (you have to buy the abstraction layer)

Pros:

* Highly redundant
* Highly available
* Reconfigurable while services are running
* Rapidly deploy new servers
* Easy to deploy
* Optimizes physical resources by doing more with less
* Resource pooling


### Implementation issues

* compatibility (must run legacy software as well as new software)
* permormance (overhead should be limited)
* simplicity: the VMM must be free of bugs that a potential attacker could use to subvert the system

### Implementation techniques

#### CPU Virtualization

A CPU architecture is virtualizabile if it supports the basic VMM technique of direct execution while letting the VMM retain ultimate control of the CPU

Implementing basic direct execution requires running the virtual machine’s privileged (operating-system kernel) and unprivileged code in the CPU’s unprivileged mode, while the VMM runs in privileged mode. Thus, when the virtual machine attempts to perform a privileged operation, the CPU traps into the VMM, which emulates the privileged operation on the virtual machine state that the VMM manages.

Consequently, the key to providing virtualizable architecture is to provide trap semantics that let a VMM safely, transparently, and directly use the CPU to execute the virtual machine. With these semantics, the VMM can use direct execution to create the illusion of a normal physical machine for the software running inside the virtual machine.

**Paravirtualization**

The VMM builder defines the virtual machine interface by replacing nonvirtualizable portions of the original instruction set with easily virtualized and more efficient equivalents.

− operating systems must be ported to run in a virtual machine
+ most normal applications can run unmodified

A **binary translator** can run privileged
modes that are nonvirtualizable, patching the nonvirtualizable instructions.

* high-performance virtual machine that matches the hardware and thus maintains total software compatibility
* high control over the translated code to lower the overall virtualization overhead

#### Memory Virtualization

The traditional implementation technique for virtualizing memory is to have the VMM maintain a shadow of the virtual machine’s memory-management data structure. This data structure, the shadow page table, lets the VMM precisely control which pages of the machine’s memory are available to a virtual machine.

There are two issues with this:

* paging: the VMM has to handle paging but the GuestOS really does manage paging. The VMM does use a baloon process to communicate with the VMM about paging
* Shared code: good VMMs detect duplicate code and only keep a single copy of the memory

#### I/O Virtualization

It is something very hard. There are tons of different devices and implementations. One possible solution implemented by VMware is to exploit HostOS by running a process on the HostOS that does communicate with the VMM.

It is a fairly simple solution but at the same time it does add some significant overhead (each IO request must transfer control to the HostOS and then go through the HostOS software layers).


### Examples

**Xen** is a VMM that runs on bare metal and enables to run several virtual guest. The virtual machine are executed securely and efficiently.


JVM, interprets and compile byte code.

Rosetta: powerPc binaries to x86


