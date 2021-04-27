#pragma once

// #include "UnLuaEx.h"

struct Vec3
{
	Vec3() : x(0), y(0), z(0) {}
	Vec3(float _x, float _y, float _z) : x(_x), y(_y), z(_z) {}

	void Set(const Vec3 &V) { *this = V; }
	Vec3& Get() { return *this; }
	void Get(Vec3 &V) const { V = *this; }

	bool operator==(const Vec3 &V) const { return x == V.x && y == V.y && z == V.z; }

	static Vec3 Cross(const Vec3 &A, const Vec3 &B) { return Vec3(A.y * B.z - A.z * B.y, A.z * B.x - A.x * B.z, A.x * B.y - A.y * B.x); }
	static Vec3 Multiply(const Vec3 &A, float B) { return Vec3(A.x * B, A.y * B, A.z * B); }
	static Vec3 Multiply(const Vec3 &A, const Vec3 &B) { return Vec3(A.x * B.x, A.y * B.y, A.z * B.z); }

	float x, y, z;
};

// BEGIN_EXPORT_CLASS(Vec3, float, float, float)
// 	ADD_PROPERTY(x)
// 	ADD_PROPERTY(y)
// 	ADD_PROPERTY(z)
// 	ADD_FUNCTION(Set)
// 	ADD_NAMED_FUNCTION("Equals", operator==)
// 	ADD_FUNCTION_EX("Get", Vec3&, Get)
// 	ADD_CONST_FUNCTION_EX("GetCopy", void, Get, Vec3&)
// 	ADD_STATIC_FUNCTION(Cross)
// 	ADD_STATIC_FUNCTION_EX("MulScalar", Vec3, Multiply, const Vec3&, float)
// 	ADD_STATIC_FUNCTION_EX("MulVec", Vec3, Multiply, const Vec3&, const Vec3&)
// END_EXPORT_CLASS()
// IMPLEMENT_EXPORTED_CLASS(Vec3)
