=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?
   a module specifies a behavior regarding messages sent to an object. objects which include a module are expected to be behave like 
   what the module describes
2) What is LSP?
	LSP stands for Liskov SUbstitution Principle. it states that a subclass should be able to be used in any situation that expects one of its
	super classes without issue
3) Briefly describe how the template method pattern works.
	the template method pattern describes a superclass which provides a generalization of a method and a call to a specialized version of the method
	which can be implemented by subclasses in situations where they need to differentiate from their super.
	a class Tree might provide a general initialization which sets up some stuff that the programmer knows every tree will need:
		perhaps Tree has roots, leaves and bark. by using the template method, the initialization also calls a method special
		which is empty in the Tree class.
	a subclass of Tree called Juniper might implement special and create data members for acorns or pinecones.

=end
