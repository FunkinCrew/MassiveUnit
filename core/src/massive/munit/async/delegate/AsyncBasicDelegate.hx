/****
* Copyright 2010 Massive Interactive. All rights reserved.
* 
* Redistribution and use in source and binary forms, with or without modification, are
* permitted provided that the following conditions are met:
* 
*    1. Redistributions of source code must retain the above copyright notice, this list of
*       conditions and the following disclaimer.
* 
*    2. Redistributions in binary form must reproduce the above copyright notice, this list
*       of conditions and the following disclaimer in the documentation and/or other materials
*       provided with the distribution.
* 
* THIS SOFTWARE IS PROVIDED BY MASSIVE INTERACTIVE ``AS IS'' AND ANY EXPRESS OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
* FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL MASSIVE INTERACTIVE OR
* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
* ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
* ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* 
* The views and conclusions contained in the software and documentation are those of the
* authors and should not be interpreted as representing official policies, either expressed
* or implied, of Massive Interactive.
* 
****/



package massive.munit.async.delegate;

import haxe.PosInfos;
import massive.munit.async.AsyncDelegate;

/**
 * An AsyncDelegate which requires no parameters to be passed to its handler.
 * 
 * @author Mike Stead
 */
class AsyncBasicDelegate extends AsyncDelegate
{
	/**
	 * Class constructor.
	 * 
	 * @param	testCase			@inheritDoc
	 * @param	handler				@inheritDoc
	 * @param	?timeout			@inheritDoc
	 * @param	?info				@inheritDoc
	 */
	public function new(testCase:Dynamic, handler:Dynamic, ?timeout:Int, ?info:PosInfos) 
	{
		super(testCase, handler, asyncHanlder, timeout, info);
	}

	private function asyncHanlder():Void
	{
		responseHandler();
	}
}