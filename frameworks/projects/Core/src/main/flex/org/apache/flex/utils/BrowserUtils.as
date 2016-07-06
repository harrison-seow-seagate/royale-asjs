////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.utils
{
	COMPILE::SWF
	{
		import flash.external.ExternalInterface;
	}

	/**
	 *  The BrowserUtils class has convenience methods abstracting differences
	 *  in executing browser code in Flash and HTML.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10.2
	 *  @playerversion AIR 2.6
	 *  @productversion FlexJS 0.7.0
	 */
	public class BrowserUtils
	{
		/**
		 *  evals arbitrary javascript code in the current browser context
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.7.0
		 */
		public static function executeJS(str:String):*
		{
			COMPILE::SWF
			{
				return ExternalInterface.call('eval', str);
			}
			
			COMPILE::JS
			{
				return eval(str);
			}
	
		}
		public function BrowserUtils()
		{
		}
	}
}