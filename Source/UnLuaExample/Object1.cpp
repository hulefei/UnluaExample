// Fill out your copyright notice in the Description page of Project Settings.


#include "Object1.h"

void UObject1::HelloStatic()
{
	UE_LOG(LogTemp, Log, TEXT("%s"), ANSI_TO_TCHAR(__FUNCTION__));
}

void UObject1::Hello1()
{
	UE_LOG(LogTemp, Log, TEXT("%s"), ANSI_TO_TCHAR(__FUNCTION__));
}

void UObject1::Hello2(const FString Message)
{
	UE_LOG(LogTemp, Log, TEXT("%s[%s]"), ANSI_TO_TCHAR(__FUNCTION__), *Message);
}

int UObject1::Hello3(const FString Message)
{
	UE_LOG(LogTemp, Log, TEXT("%s[%s]"), ANSI_TO_TCHAR(__FUNCTION__), *Message);
	return 100;
}

void UObject1::GetFString(FString Name, FString& OutName)
{
	OutName = "Hello " + Name;
}

void UObject1::GetStruct(FNameStruct& NameStruct)
{
	NameStruct.Name = TEXT("icewolf");
}