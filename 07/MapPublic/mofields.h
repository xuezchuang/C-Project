#if !defined(AFX_MOFIELDS_H__01AA6DFE_A644_42E5_A1EC_FF9568CCAC54__INCLUDED_)
#define AFX_MOFIELDS_H__01AA6DFE_A644_42E5_A1EC_FF9568CCAC54__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.


// Dispatch interfaces referenced by this interface
class CMoField;

/////////////////////////////////////////////////////////////////////////////
// CMoFields wrapper class

class CMoFields : public COleDispatchDriver
{
public:
	CMoFields() {}		// Calls COleDispatchDriver default constructor
	CMoFields(LPDISPATCH pDispatch) : COleDispatchDriver(pDispatch) {}
	CMoFields(const CMoFields& dispatchSrc) : COleDispatchDriver(dispatchSrc) {}

// Attributes
public:
	short GetCount();
	void SetCount(short);

// Operations
public:
	CMoField Item(const VARIANT& Item);
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOFIELDS_H__01AA6DFE_A644_42E5_A1EC_FF9568CCAC54__INCLUDED_)