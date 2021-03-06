//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Model           : <Tobago.ProjectName>
//     Template        : Business Object Entity UnitTest.tpl
//     Runtime Version : $Version$
//     Generation date : <Tobago.CurrentDate>
//
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using Adf.Business.SmartReferences;
using Adf.Business.ValueObject;
using $Class.Model$.Business;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace $Class.Model$.Business.Tests
{
    /// <summary>
    /// This is a test class for $Class.Name$Factory and is intended
    /// to contain all $Class.Name$Factory Unit Tests
    /// </summary>
    [TestClass()]
    public partial class $Class.Name$FactoryFixture : BusinessFixtureBase
    {
        #region CodeGuard(TestContext)

        private TestContext testContextInstance;

        /// <summary>
        /// Gets or sets the test context which provides
        /// information about and functionality for the current test run.
        /// </summary>
        public TestContext TestContext
        {
            get {return testContextInstance;}
            set {testContextInstance = value;}
        }

        #endregion CodeGuard(TestContext)

        #region CodeGuard(Initialize and Cleanup)
		
        /// <summary>
        /// Use ClassInitialize to run code before running the first test in the class
        /// </summary>
        /// <param name="testContext">TestContext</param>
        [ClassInitialize()]
        public static void ClassInitialize(TestContext testContext)
        {
            InitializeClass();
        }

        /// <summary>
        /// Use ClassCleanup to run code after all tests in a class have run
        /// </summary>
        [ClassCleanup()]
        public static void ClassCleanup()
        {
            CleanupClass();
        }

        /// <summary>
        /// Use TestInitialize to run code before running each test
        /// </summary>
        [TestInitialize()]
        public void TestInitialize()
        {
            InitializeTest();
        }

        /// <summary>
        /// Use TestCleanup to run code after each test has run
        /// </summary>
        [TestCleanup()]
        public void TestCleanup()
        {
            CleanupTest();
        }

        #endregion CodeGuard(Initialize and Cleanup)

        #region CodeGuard(Method Count Test)

        /// <summary>
        /// A test for Count
        /// </summary>
        [TestMethod]
        public void CountTest()
        {
            Assert.IsNotNull($Class.Name$Factory.Count, "$Class.Name$Factory. Count did not return the expected value.");
        }

        #endregion CodeGuard(Method Count Test)

        #region CodeGuard(Method Get Test)

        /// <summary>
        /// A test for Get (Id)
        /// </summary>
        [TestMethod]
        public void GetTest()
        {
            $Class.Name$ $Class.Name.Camel$ = $Class.Name$Factory.New();
			
<Tobago.Loop(Class.Attributes, Attributes)>
            bool result = $Class.Name.Camel$.Save();

            if (result)
            {
                $Class.Name$ saved$Class.Name$ = $Class.Name$Factory.Get($Class.Name.Camel$.Id);
                Assert.AreEqual($Class.Name.Camel$.Id.ToString(), saved$Class.Name$.Id.ToString(), "$Class.Name$Factory. Get did not return the expected value.");
            }
            else
            {
                Assert.IsTrue(result, "$Class.Name$Factory. Save did not return the expected value.");
            }
        }

        #endregion CodeGuard(Method Get Test)
		
        #region CodeGuard(Method GetAll Test)

        /// <summary>
        /// A test for GetAll ()
        /// </summary>
        [TestMethod]
        public void GetAllTest()
        {
            DomainCollection<$Class.Name$> result = $Class.Name$Factory.GetAll();

            CollectionAssert.AllItemsAreNotNull(result, "$Class.Name$Factory. GetAll did not return the expected value.");
        }

        #endregion CodeGuard(Method GetAll Test)

        #region CodeGuard(Method New Test)

        /// <summary>
        /// A test for New ()
        /// </summary>
        [TestMethod]
        public void NewTest()
        {
            $Class.Name$ $Class.Name.Camel$ = $Class.Name$Factory.New();

            Assert.IsNotNull($Class.Name.Camel$, "$Class.Name$Factory. New did not return the expected value.");
        }

        #endregion CodeGuard(Method New Test)

        #region CodeGuard(Method Remove Test)

        /// <summary>
        /// A test for Remove (IInternalState)
        /// </summary>
        [TestMethod]
        public void RemoveTest()
        {
            $Class.Name$ $Class.Name.Camel$ = $Class.Name$Factory.New();

<Tobago.Loop(Class.Attributes, Attributes)>
            bool result = $Class.Name.Camel$.Save();

            if (result)
            {
                result = $Class.Name$Factory.Remove($Class.Name.Camel$);
                Assert.IsTrue(result, "$Class.Name$Factory. Remove did not return the expected value.");
            }
            else
            {
                Assert.IsTrue(result, "$Class.Name$Factory. Save did not return the expected value.");
            }
        }

        #endregion CodeGuard(Method Remove Test)

        #region CodeGuard(Custom)

        #endregion CodeGuard(Custom)
    }
}