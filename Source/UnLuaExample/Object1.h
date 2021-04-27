// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

#include "Interface1.h"
#include "UObject/Object.h"
#include "Object1.generated.h"


USTRUCT(BlueprintType)
struct FNameStruct
{
	GENERATED_USTRUCT_BODY()
	UPROPERTY(BlueprintReadWrite)
	FString Name;
};
/**
 * 
 */
UCLASS()
class UNLUAEXAMPLE_API UObject1 : public UObject, public IInterface1
{
	GENERATED_BODY()

public:
	DECLARE_DELEGATE(FNoParamDelegate)
	DECLARE_DELEGATE_OneParam(FOneParamDelegate, FString)
	DECLARE_DELEGATE_RetVal_OneParam(int, FOneParamAndRetValDelegate, FString)

	DECLARE_DYNAMIC_DELEGATE(FNoParamDynamicDelegate);
	DECLARE_MULTICAST_DELEGATE(FNoParamMulticastDelegate);
	DECLARE_DYNAMIC_MULTICAST_DELEGATE(FNoParamMDynamicMulticastDelegate);
	
	UFUNCTION()
	virtual void HelloInterface() override
	{
		UE_LOG(LogTemp, Log, TEXT("%s"), ANSI_TO_TCHAR(__FUNCTION__));
	}

	UFUNCTION()
	static UObject1* GetInstance()
	{
		UObject1* Object1 = NewObject<UObject1>();
		Object1->TestNoParamDelegate.BindStatic(&UObject1::HelloStatic);
		Object1->TestNoParamDelegate.BindUObject(Object1, &UObject1::Hello1);
		Object1->TestOneParamDelegate.BindUObject(Object1, &UObject1::Hello2);
		Object1->TestOneParamAndRetValDelegate.BindUObject(Object1, &UObject1::Hello3);

		return Object1;
	}

	UFUNCTION()
	void CallNoParamDelegate() const
	{
		TestNoParamDelegate.Execute();
	}

	UFUNCTION()
	void CallOneParamDelegate(const FString Message) const
	{
		TestOneParamDelegate.Execute(Message);
	}

	UFUNCTION()
	int CallOneParamAndRetValDelegate(const FString Message) const
	{
		return TestOneParamAndRetValDelegate.Execute(Message);
	}

	UFUNCTION()
	static void HelloStatic();
	UFUNCTION()
	void Hello1();
	UFUNCTION()
	void Hello2(const FString Message);
	UFUNCTION()
	int Hello3(const FString Message);
	UFUNCTION()
	static void GetFString(FString Name, FString& OutName);
	UFUNCTION()
	static void GetStruct(FNameStruct& NameStruct);

	FNoParamDelegate TestNoParamDelegate;
	FOneParamDelegate TestOneParamDelegate;
	FOneParamAndRetValDelegate TestOneParamAndRetValDelegate;
	FNoParamMulticastDelegate TestNoParamMulticastDelegate;

	UPROPERTY()
    FNoParamDynamicDelegate TestNoParamDynamicDelegate;
	UPROPERTY()
	FNoParamMDynamicMulticastDelegate TestNoParamMDynamicMulticastDelegate;
};
