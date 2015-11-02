package starling.utils;

import lime.utils.Int16Array;
import openfl.display3D.IndexBuffer3D;
import openfl.display3D.VertexBuffer3D;
import openfl.utils.Float32Array;

class VertexBufferUtil
{
	inline public static function uploadVertexBufferFromFloat32Array(vertexBuffer:VertexBuffer3D, data:Float32Array, startVertex:Int, numVertices:Int)
	{
		#if flash
		vertexBuffer.uploadFromByteArray(data.buffer.getData(), data.byteOffset, startVertex, numVertices);
		#else
		vertexBuffer.uploadFromFloat32Array(data, startVertex, numVertices);
		#end
	}
	
	inline public static function uploadIndexBufferFromInt16Array(indexBuffer:IndexBuffer3D, data:Int16Array, startVertex:Int, numVertices:Int)
	{
		#if flash
		indexBuffer.uploadFromByteArray(data.buffer.getData(), data.byteOffset, startVertex, numVertices);
		#else
		indexBuffer.uploadFromInt16Array(data, startVertex, numVertices);
		#end
	}
}