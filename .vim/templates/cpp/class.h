/**
 * Description of the Class.
 */
class Class
{
	public:
		/**
		 * brief description of the constructor. 
		 */  
		Class();

		/**
		 * brief description of the destructor. 
		 */  
		~Class();

		/**
		 * brief description of the method. 
		 */  
		int testMe(int a);

	private:
		int cannot_inherit_me; /**< int value cannot_inherit_me. */  

	protected:
		int can_inherit_me; /**< int value can_inherit_me. */  
};
